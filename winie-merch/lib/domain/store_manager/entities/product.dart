import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Variation implements _$Variation {
  const Variation._();

  const factory Variation({
    required UniqueId id,
    required String color,
    required List<String> sizes,
    required int quantity,
    required List<String> photos,
    required String price,
    required String condition,
    int? views,
    int? buys,
    int? inCart,
    int? ratingCount,
    double? ratingTotal,
  }) = _Variation;

  factory Variation.empty() => Variation(
        id: UniqueId(),
        color: '',
        sizes: [],
        quantity: 1,
        photos: [],
        price: '1.00',
        condition: '',
        views: 0,
        buys: 0,
        inCart: 0,
        ratingCount: 1,
        ratingTotal: 5.0,
      );
}

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required UniqueId id,
    required String name,
    required String? brand,
    required String description,
    required String category,
    required String subCategory,
    required UniqueId storeId,
    required List<String> audiences,
    required List<Variation> variations,
    required String dynamicLink,
    bool? verified,
  }) = _Product;

  factory Product.empty() => Product(
        id: UniqueId(),
        name: '',
        brand: '',
        description: '',
        storeId: UniqueId(),
        category: '',
        subCategory: '',
        audiences: [],
        variations: [],
        dynamicLink: '',
        verified: false,
      );
}
