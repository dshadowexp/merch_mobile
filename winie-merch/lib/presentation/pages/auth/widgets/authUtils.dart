import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../injection.dart';

showLongLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          backgroundColor: Colors.white,
          title: Text('Loading'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: JumpingDotsProgressIndicator(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

authQuestion(
    BuildContext context, String title, String description, action) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                          await action(false);
                        },
                        child: Text(
                          "No",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                          await action(true);
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

navigate(BuildContext context, User user) async {
  IStoreManagerRepository storeRepo = getIt<IStoreManagerRepository>();
  List<Store> stores = await storeRepo.loadUserStores();
  await getIt<AppData>().getDataFromDatabase("categories");

  if (stores.isEmpty) {
    await AutoRouter.of(context).pushAndPopUntil(
      InitialSetup(userData: user),
      predicate: (Route<dynamic> route) => false,
    );
  } else {
    await AutoRouter.of(context).pushAndPopUntil(
      LandingRoute(),
      predicate: (Route<dynamic> route) => false,
    );
  }
}
