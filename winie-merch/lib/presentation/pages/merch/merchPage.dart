import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/application/store_manager/product/product_bloc.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/presentation/pages/merch/products/productsPage.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class MerchPage extends StatefulWidget {
  const MerchPage({
    Key? key,
  }) : super(key: key);

  @override
  _MerchPageState createState() => _MerchPageState();
}

class _MerchPageState extends State<MerchPage>
    with SingleTickerProviderStateMixin {
  final storeNotifier = ValueNotifier<Store?>(null);

  @override
  void initState() {
    super.initState();
    context.read<StoreBloc>().add(StoreEvent.loadStores());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreBloc, StoreState>(
      listener: (context, state) {
        switch (state.status) {
          case StoreStatus.success:
            storeNotifier.value = state.currentStore;
            if (state.currentStore != null) {
              context.read<ProductBloc>().add(
                    ProductEvent.watchProductsStarted(
                      state.currentStore!.id.getOrCrash(),
                    ),
                  );
            }
            break;
          default:
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shop',
            style: GoogleFonts.mulish().copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder(
              valueListenable: storeNotifier,
              builder: (_, store, __) => ProductsPage(
                storeId:
                    (store as Store?) != null ? store!.id.getOrCrash() : null,
                scrollController: ScrollController(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: UniqueKey(),
          backgroundColor: Colors.green,
          onPressed: () {
            if (storeNotifier.value != null) {
              AutoRouter.of(context).push(
                ProductDetailRoute(
                  isNew: true,
                  productNotifier:
                      ValueNotifier<Product>(Product.empty().copyWith(
                    storeId: storeNotifier.value!.id,
                  )),
                ),
              );
            }
          },
          child: Center(
            child: Icon(
              Icons.post_add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
