import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/store_manager/product/product_bloc.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/presentation/pages/widgets/emptySection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import 'productCard.dart';

class ProductsPage extends StatefulWidget {
  final String? storeId;
  final ScrollController scrollController;

  const ProductsPage({
    Key? key,
    required this.storeId,
    required this.scrollController,
  }) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          Widget animatedWidget = Container();
          state.maybeMap(
            orElse: () {
              animatedWidget = Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: JumpingDotsProgressIndicator(
                      fontSize: 40.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              );
            },
            loadSuccess: (state) {
              animatedWidget = Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: GridView.builder(
                        controller: widget.scrollController,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 7.0,
                          crossAxisSpacing: 1.0,
                          childAspectRatio: 9 / 13,
                        ),
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                            product: state.products[index],
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            },
            loadFailure: (failure) {
              animatedWidget = failure.productFailure.maybeMap(
                noStores: (_) {
                  return StartProduct(
                    storeId: widget.storeId,
                  );
                },
                orElse: () {
                  return EmptySection(
                    icon: Icons.error,
                    text: 'An error occurred',
                  );
                },
              );
            },
          );
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 150),
            child: animatedWidget,
          );
        },
      ),
    );
  }
}

class StartProduct extends StatelessWidget {
  final String? storeId;

  const StartProduct({
    Key? key,
    required this.storeId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 60,
            ),
            child: Text(
              'Add products',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 50,
            ),
            child: Text(
              'Populate your store with the products you want to sell',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(170, 50),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.green,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
              onPressed: () async {
                if (storeId != null) {
                  AutoRouter.of(context).push(
                    ProductDetailRoute(
                      isNew: true,
                      productNotifier:
                          ValueNotifier<Product>(Product.empty().copyWith(
                        storeId: UniqueId.fromUniqueString(storeId!),
                      )),
                    ),
                  );
                }
              },
              child: Text(
                "Create a product",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
