import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/presentation/pages/account/widgets/bugReport.dart';
import 'package:winie_merch/presentation/pages/merch/products/widgets/productVariations.dart';
import 'package:winie_merch/presentation/pages/merch/products/widgets/productInfo.dart';

import '../../../../injection.dart';

class ProductDetailPage extends StatefulWidget {
  final bool isNew;
  final ValueNotifier<Product> productNotifier;

  const ProductDetailPage({
    Key? key,
    required this.isNew,
    required this.productNotifier,
  }) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final _storeManagerRepository = getIt<IStoreManagerRepository>();
  PageController _pageController = PageController();
  final loadingNotifier = ValueNotifier<bool>(false);
  final currentPageNotifier = ValueNotifier<int>(0);
  final productVariations = ValueNotifier<int>(1);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    currentPageNotifier.dispose();
    loadingNotifier.dispose();
    super.dispose();
  }

  bool validateProduct() {
    return widget.productNotifier.value.name.isNotEmpty &&
        widget.productNotifier.value.category.isNotEmpty &&
        widget.productNotifier.value.description.isNotEmpty &&
        widget.productNotifier.value.subCategory.isNotEmpty;
  }

  bool validVariations() {
    for (int i = 0; i < widget.productNotifier.value.variations.length; i++) {
      bool hasPrice =
          widget.productNotifier.value.variations[i].price.isNotEmpty;
      bool hasQuantity =
          widget.productNotifier.value.variations[i].quantity > 0;
      String hasImages =
          widget.productNotifier.value.variations[i].photos.join();

      if (!hasPrice && !hasQuantity && hasImages.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Variation ${i} is incomplete'),
          duration: Duration(seconds: 3),
        ));
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: ValueListenableBuilder(
            valueListenable: currentPageNotifier,
            builder: (_, current, __) => Text(
              current == 0 ? "Product Detail" : "Variations",
              style: GoogleFonts.mulish().copyWith(
                fontSize: 17,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () async {
              if (currentPageNotifier.value == 0) {
                Navigator.pop(context);
              } else if (currentPageNotifier.value == 1) {
                currentPageNotifier.value = 0;

                _pageController.animateTo(
                    MediaQuery.of(context).size.width *
                        currentPageNotifier.value,
                    duration: new Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              }
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!widget.isNew) ...[
                  InkWell(
                    onTap: () async {
                      if (validateProduct()) {
                        bool? response;
                        await showAsyncReportDialog(
                          context,
                          () async {
                            response = await _storeManagerRepository
                                .updateProduct(widget.productNotifier.value);
                          },
                        );
                        if (response!) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Product updated'),
                            duration: Duration(seconds: 3),
                          ));
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Something went wrong'),
                            duration: Duration(seconds: 3),
                          ));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Fill all fields'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Update',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Icon(
                            FeatherIcons.edit2,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ] else ...[
                  ValueListenableBuilder(
                    valueListenable: currentPageNotifier,
                    builder: (_, current, __) => current == 0
                        ? InkWell(
                            onTap: () {
                              if (validateProduct()) {
                                currentPageNotifier.value = 1;

                                _pageController.animateTo(
                                    MediaQuery.of(context).size.width *
                                        currentPageNotifier.value,
                                    duration: new Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Fill all fields'),
                                  duration: Duration(seconds: 3),
                                ));
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  currentPageNotifier.value = 0;

                                  _pageController.animateTo(
                                      MediaQuery.of(context).size.width *
                                          currentPageNotifier.value,
                                      duration: new Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                },
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  if (validVariations()) {
                                    bool? response;
                                    await showAsyncReportDialog(
                                      context,
                                      () async {
                                        response = await _storeManagerRepository
                                            .createProduct(
                                                widget.productNotifier.value);
                                      },
                                    );
                                    if (response!) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text('Product created'),
                                        duration: Duration(seconds: 3),
                                      ));
                                      Navigator.pop(context);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text('Something went wrong'),
                                        duration: Duration(seconds: 3),
                                      ));
                                    }
                                  }
                                },
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            currentPageNotifier.value = page;
          },
          children: [
            ProductInfo(
              isNew: widget.isNew,
              productNotifier: widget.productNotifier,
              variationsNotifier: productVariations,
            ),
            if (widget.isNew) ...[
              ProductVariations(
                variationsNotifier: productVariations,
                productNotifier: widget.productNotifier,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
