import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/infrastructure/core/uploads.dart';
import 'package:winie_merch/infrastructure/dynamic_links/dynamic_links_repository.dart';
import 'package:winie_merch/infrastructure/navigation/location_repository.dart';
import 'package:winie_merch/infrastructure/store_manager/store_manager_dtos.dart';
import 'package:winie_merch/infrastructure/core/firestore_helpers.dart';
import 'package:winie_merch/injection.dart';

@LazySingleton(as: IStoreManagerRepository)
class StoreManagerRepository implements IStoreManagerRepository {
  FirebaseFirestore _firestore;

  StoreManagerRepository(
    this._firestore,
  );

  Geoflutterfire _geoflutterfire = Geoflutterfire();

  @override
  Stream<Either<StoreManagerFailure, List<Product>>> watchStoreProducts(
      String storeId) async* {
    final productsDoc = _firestore.collection('products');
    yield* productsDoc
        .where('storeId', isEqualTo: storeId)
        .orderBy('name')
        .snapshots()
        .map((snapShot) {
      if (snapShot.docs.length == 0) {
        return left(StoreManagerFailure.noStores());
      }

      return right<StoreManagerFailure, List<Product>>(
        snapShot.docs.map((doc) {
          return ProductDTO.fromFirestore(doc).toDomain();
        }).toList(),
      );
    });
  }

  @override
  Future<bool> createProduct(Product product) async {
    List<Variation> variations = [];
    try {
      for (var variety in product.variations) {
        if (variety.photos.length == 0) {
          return false;
        }
        List<String> images = [];
        for (var i = 0; i < variety.photos.length; i++) {
          var productPicPath = variety.photos[i];
          if (productPicPath.isEmpty) {
            continue;
          }

          if (!productPicPath.contains("firebasestorage")) {
            var url = await getIt<Uploads>().uploadImage(productPicPath);
            images.add(url);
          } else {
            images.add(productPicPath);
          }
        }
        variety = variety.copyWith(
          photos: images,
        );
        variations.add(variety);
      }

      product = product.copyWith(variations: variations);

      final productDTO = ProductDTO.fromDomain(
          await generateProductLink(product, variations[0].photos[0]));

      final productsDoc = _firestore.collection('products');
      await productsDoc.doc(productDTO.id).set(productDTO.toJson());

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updateProduct(Product product) async {
    List<Variation> variations = [];

    try {
      for (var variety in product.variations) {
        if (variety.photos.length == 0) {
          return false;
        }
        List<String> images = [];
        for (var i = 0; i < variety.photos.length; i++) {
          var productPicPath = variety.photos[i];

          if (variety.photos[i].isEmpty) {
            continue;
          }

          if (!productPicPath.contains("firebasestorage")) {
            var url = await getIt<Uploads>().uploadImage(productPicPath);
            images.add(url);
          } else {
            images.add(productPicPath);
          }
          variety = variety.copyWith(
            photos: images,
          );
        }
        variations.add(variety);
      }

      product = product.copyWith(variations: variations);

      final productDTO = ProductDTO.fromDomain(
          await generateProductLink(product, variations[0].photos[0]));

      final productsDoc = _firestore.collection('products');
      var toJson = productDTO.toJson();

      await productsDoc.firestore
          .collection('products')
          .doc(productDTO.id)
          .update(toJson);

      return true;
    } on FirebaseException catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteProduct(Product product) async {
    try {
      final productsDoc = _firestore.collection('products');
      await productsDoc.doc(product.id.getOrCrash()).delete();

      return true;
    } catch (e) {
      return false;
    }
  }

  Stream<Either<StoreManagerFailure, Store>> watchStore(String storeId) async* {
    final storesDoc = _firestore.collection('stores').doc(storeId);
    yield* storesDoc.snapshots().map((event) {
      return right<StoreManagerFailure, Store>(
        StoreDTO.fromFirestore(event).toDomain(),
      );
    });
  }

  @override
  Future<Store?> retrieveStore(String storeId) async {
    try {
      var storeDoc = await _firestore.collection('stores').doc(storeId).get();
      return StoreDTO.fromFirestore(storeDoc).toDomain();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Store>> loadUserStores() async {
    try {
      var userId = (await _firestore.userDocument()).id;
      var userStores = await _firestore
          .collection('stores')
          .where('partners', arrayContains: userId)
          .get();

      List<Store> stores = [];
      stores = userStores.docs
          .map((doc) => StoreDTO.fromFirestore(doc).toDomain())
          .toList();
      return stores;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<Either<StoreManagerFailure, Unit>> updateStore(
      Map<String, dynamic> storeField) async {
    try {
      if (storeField['address'] != null) {
        var geoPointData = await findGeoPosition(storeField["address"]);
        storeField['geoPosition'] = geoPointData;
      }

      final storesDoc = _firestore.collection('stores');
      final storeData = (await (await _firestore.userDocument()).get()).data()
          as Map<String, dynamic>;

      final id = storeData['storeId'];

      await storesDoc.firestore.collection('stores').doc(id).update(storeField);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(StoreManagerFailure.serverError());
    }
  }

  Future<bool> updateVariation(UniqueId productId, Variation variation) async {
    try {
      print("Edit variation");
      List<String> images = [];
      for (var i = 0; i < variation.photos.length; i++) {
        var productPicPath = variation.photos[i];
        if (variation.photos[i].isEmpty) {
          continue;
        }

        if (!productPicPath.contains("firebasestorage")) {
          var url = await getIt<Uploads>().uploadImage(productPicPath);
          images.add(url);
        } else {
          images.add(productPicPath);
        }
      }
      variation = variation.copyWith(
        photos: images,
      );

      var body = {
        "productId": productId.getOrCrash(),
        "variationId": variation.id.getOrCrash(),
        "data": VariationDTO.fromDomain(variation).toJson(),
      };
      print(body);
      final response = await http.post(
        Uri.parse("${AppData.apiUrl}editVariation"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> addVariation(UniqueId productId, Variation variation) async {
    try {
      if (variation.photos.length == 0) {
        return false;
      }

      List<String> images = [];
      for (var i = 0; i < variation.photos.length; i++) {
        var productPicPath = variation.photos[i];

        if (variation.photos[i].isEmpty) {
          continue;
        }

        if (!productPicPath.contains("firebasestorage")) {
          var url = await getIt<Uploads>().uploadImage(productPicPath);
          images.add(url);
        } else {
          images.add(productPicPath);
        }
      }
      variation = variation.copyWith(
        photos: images,
      );
      var body = {
        "productId": productId.getOrCrash(),
        "data": VariationDTO.fromDomain(variation).toJson(),
      };

      final response = await http.post(
        Uri.parse("${AppData.apiUrl}addVariation"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteVariation(UniqueId productId, UniqueId variationId) async {
    try {
      var productDoc = await _firestore
          .collection('products')
          .doc(productId.getOrCrash())
          .get();
      if (productDoc.exists) {
        var productData = productDoc.data();
        var variations = productData!['variations'];
        variations.removeWhere((e) => e['id'] == variationId.getOrCrash());
        productData['variations'] = variations;
        await _firestore
            .collection("products")
            .doc(productId.getOrCrash())
            .update(productData);
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> acceptPartner(String storeId, String partnerId) async {
    try {
      var storeDoc = await _firestore.collection('stores').doc(storeId).get();
      if (storeDoc.exists) {
        List<dynamic> partnerRequests = storeDoc.data()!['partnerRequests'];
        List<dynamic> partners = storeDoc.data()!['partners'];

        if (!partners.contains(partnerId)) {
          partners.add(partnerId);
          partnerRequests.remove(partnerId);
          await _firestore.collection('stores').doc(storeId).update(
            {
              'partners': partners,
              'partnerRequests': partnerRequests,
            },
          );

          var deviceToken =
              (await _firestore.collection('users').doc(partnerId).get())
                  .data()!['merchDeviceToken'];

          var body = {
            'typeCode': 0,
            'title': 'Shop request decline',
            'body': 'Shop has accepted your partner request',
            'type': 'stores',
            'documentID': storeId,
            'deviceTokenID': deviceToken,
          };

          await http.post(
            Uri.parse("${AppData.apiUrl}sendNotifications"),
            headers: {
              "Content-Type": "application/json",
            },
            body: json.encode(body),
          );

          return true;
        }
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> declinePartner(String storeId, String partnerId) async {
    try {
      var storeDoc = await _firestore.collection('stores').doc(storeId).get();
      if (storeDoc.exists) {
        List<String>? partnerRequests = storeDoc.data()!['partnerRequests'];

        if (partnerRequests != null && !partnerRequests.contains(partnerId)) {
          partnerRequests.remove(partnerId);
          await _firestore.collection('stores').doc(storeId).update(
            {'partnerRequests': partnerRequests},
          );

          var deviceToken =
              (await _firestore.collection('users').doc(partnerId).get())
                  .data()!['merchDeviceToken'];

          var body = {
            'typeCode': 0,
            'title': 'Shop request decline',
            'body': 'Shop has declined your partner request',
            'type': 'stores',
            'documentID': storeId,
            'deviceTokenID': deviceToken,
          };

          await http.post(
            Uri.parse("${AppData.apiUrl}sendNotifications"),
            headers: {
              "Content-Type": "application/json",
            },
            body: json.encode(body),
          );

          return true;
        }
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> joinStoreAsPartner(String storeId) async {
    try {
      var userDoc = await _firestore.userDocument();
      var storeDoc = await _firestore.collection('stores').doc(storeId).get();
      if (storeDoc.exists) {
        List<dynamic> partnerRequests = storeDoc.data()!['partnerRequests'];
        List<dynamic> partners = storeDoc.data()!['partners'];

        if (partners != null && partners.contains(userDoc.id)) {
          return false;
        }

        if (partnerRequests != null) {
          if (partnerRequests.contains(userDoc.id)) {
            return false;
          }
          partnerRequests.add(userDoc.id);
          await _firestore.collection('stores').doc(storeId).update(
            {'partnerRequests': partnerRequests},
          );
        } else {
          await _firestore.collection('stores').doc(storeId).update(
            {
              'partnerRequests': [userDoc.id]
            },
          );
        }

        var deviceToken = (await _firestore
                .collection('users')
                .doc(storeDoc.data()!['owner'])
                .get())
            .data()!['merchDeviceToken'];

        var body = {
          'typeCode': 0,
          'title': 'Shop partner request',
          'body':
              'User ${userDoc.id} has requested to join your shop as a partner',
          'type': 'stores',
          'documentID': storeId,
          'deviceTokenID': deviceToken,
        };

        await http.post(
          Uri.parse("${AppData.apiUrl}sendNotifications"),
          headers: {
            "Content-Type": "application/json",
          },
          body: json.encode(body),
        );

        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<dynamic> generateProductLink(Product product, String imageURL) async {
    Map<String, dynamic> dynamicLinkParameter = {
      'id': product.id,
      'name': product.name,
      'desc': product.description,
      'imageURL': imageURL,
    };

    final String updateDynamicLink =
        await DynamicLinksRepository.createDynamicLink(
      'product',
      dynamicLinkParameter,
    );

    return product.copyWith(
      dynamicLink: updateDynamicLink,
    );
  }

  Future<dynamic> findGeoPosition(String storeAddress) async {
    LatLong geoCode = await LocationRepository.fetchGeocode(storeAddress);
    GeoFirePoint point = _geoflutterfire.point(
      latitude: geoCode.lat,
      longitude: geoCode.lng,
    );
    return point.data;
  }
}
