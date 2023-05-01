import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'variationScreen.dart';

class ProductVariations extends StatefulWidget {
  final ValueNotifier<Product> productNotifier;
  final ValueNotifier<int> variationsNotifier;

  const ProductVariations({
    Key? key,
    required this.productNotifier,
    required this.variationsNotifier,
  }) : super(key: key);

  @override
  _ProductVariationsState createState() => _ProductVariationsState();
}

class _ProductVariationsState extends State<ProductVariations> {
  PageController _pageController = PageController();
  final loadingNotifier = ValueNotifier<bool>(false);
  final currentPageNotifier = ValueNotifier<int>(0);
  final dataNotifier = ValueNotifier<Map<String, dynamic>>({});
  List<Variation> variations = [];
  Map categoryType = {};

  @override
  void initState() {
    categoryType = AppData
        .categoriesData[widget.productNotifier.value.category.toLowerCase()];
    super.initState();
  }

  @override
  void dispose() {
    loadingNotifier.dispose();
    currentPageNotifier.dispose();
    _pageController.dispose();
    dataNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentPageNotifier,
      builder: (_, page, __) => Scaffold(
        body: Container(
          color: Colors.white,
          child: ValueListenableBuilder(
            valueListenable: widget.variationsNotifier,
            builder: (_, variationsCount, __) => PageView.builder(
              itemCount: variationsCount as int,
              itemBuilder: (_, index) => VariationScreen(
                variationData: (Variation variationData) {
                  if (widget.productNotifier.value.variations.length <= index) {
                    widget.productNotifier.value.variations.add(variationData);
                  } else {
                    widget.productNotifier.value.variations[index] =
                        variationData;
                  }
                },
                categoryType: categoryType,
                variation: widget.productNotifier.value.variations.length > 1
                    ? widget.productNotifier.value.variations[index]
                    : Variation.empty(),
              ),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (page) {
                currentPageNotifier.value = page;
              },
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: ValueListenableBuilder(
              valueListenable: widget.variationsNotifier,
              builder: (_, variationsCount, __) => (variationsCount as int) == 1
                  ? Container(
                      height: 1,
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ValueListenableBuilder(
                          valueListenable: currentPageNotifier,
                          builder: (_, page, __) => DotsIndicator(
                            position: (page as int).toDouble(),
                            dotsCount: variationsCount,
                            decorator: DotsDecorator(
                              size: const Size.square(7.0),
                              activeSize: const Size(15.0, 9.0),
                              spacing: EdgeInsets.symmetric(
                                horizontal: 3,
                              ),
                              color: Colors.black26,
                              activeColor: Colors.green,
                              activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
