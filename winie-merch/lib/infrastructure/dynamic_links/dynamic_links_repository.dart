import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/presentation/core/app_widget.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../injection.dart';

class DynamicLinksRepository {
  final _storeApi = getIt<IStoreManagerRepository>();

  DynamicLinksRepository();

  Future<dynamic> handleDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink(
      onSuccess: (PendingDynamicLinkData? dynamicLinkData) async {
        if (dynamicLinkData != null) {
          var store = await _handleDeepLink(dynamicLinkData);

          if (store != null && store.runtimeType.toString() == '_\$_Store') {
            appRouter.navigate(
              JoinPartnerRoute(
                store: store!,
                callBack: () {},
              ),
            );
          }
        }
      },
      onError: (OnLinkErrorException e) async {},
    );

    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    if (data != null) {
      return await _handleDeepLink(data);
    } else {
      return null;
    }
  }

  Future<dynamic> _handleDeepLink(PendingDynamicLinkData data) async {
    try {
      final Uri deeplink = data.link;

      var id = deeplink.queryParameters['id'];
      if (id != null) {
        String requestType = deeplink.path.toString().substring(1);

        if (requestType == "invitation") {
          final store = await _storeApi.retrieveStore(id);
          return store;
        }
      }
      return null;
    } catch (error) {
      return null;
    }
  }

  static Future<String> createDynamicLink(
    String type,
    Map<String, dynamic> parameter,
  ) async {
    String uriPrefix = "https://winieapp.page.link";

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uriPrefix,
      link: Uri.parse("http://winiecusto.com/$type?id=${parameter['id']}"),
      androidParameters: AndroidParameters(
        packageName: "com.winie.custo",
        minimumVersion: 125,
      ),
      iosParameters: IosParameters(
        ipadBundleId: "1.0.0",
        appStoreId: "1541533613",
        bundleId: "com.winie.custo",
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: parameter['name'],
        description: parameter['desc'],
        imageUrl: Uri.parse(parameter['imageURL']),
      ),
    );
    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;
    return shortUrl.toString();
  }

  static Future<String> createPartnerInvitation(
    Map<String, dynamic> parameter,
  ) async {
    String uriPrefix = "https://winiemerch.page.link";

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uriPrefix,
      link: Uri.parse("http://winiemerch.io/invitation?id=${parameter['id']}"),
      androidParameters: AndroidParameters(
        packageName: "com.winie.merch",
        minimumVersion: 125,
      ),
      iosParameters: IosParameters(
        ipadBundleId: "1.15.0",
        appStoreId: "1538654071",
        bundleId: "com.winie.merch",
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: parameter['name'],
        description: parameter['desc'],
        imageUrl: Uri.parse(parameter['imageURL']),
      ),
    );
    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();

    final Uri shortUrl = shortDynamicLink.shortUrl;
    return shortUrl.toString();
  }
}
