import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/presentation/pages/merch/products/widgets/variationWidgets.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs/productDialog.dart';
import 'package:winie_merch/presentation/pages/widgets/productFieldsList.dart';

class VariationScreen extends StatefulWidget {
  final Variation variation;
  final Function(Variation) variationData;
  final Map categoryType;

  const VariationScreen({
    Key? key,
    required this.variation,
    required this.categoryType,
    required this.variationData,
  }) : super(key: key);

  @override
  _VariationScreenState createState() => _VariationScreenState();
}

class _VariationScreenState extends State<VariationScreen>
    with AutomaticKeepAliveClientMixin<VariationScreen> {
  RangeValues _currentRangeValues = RangeValues(17, 50);
  List<String> sizes = [];

  final variation = ValueNotifier<Variation>(Variation.empty());
  final variationCondition = ValueNotifier<String>("");
  final variationQuantity = ValueNotifier<String>("1");
  final variationPrice = ValueNotifier<String>("1.00");
  final variationColor = ValueNotifier<String>("");
  final variationSizes = ValueNotifier<List<String>>([]);
  final variationImages = ValueNotifier<List<String>>(['', '', '']);

  @override
  void initState() {
    super.initState();
    setVariation();
    setSizes();
  }

  @override
  void dispose() {
    variationColor.dispose();
    variationQuantity.dispose();
    variationPrice.dispose();
    variationImages.dispose();
    variationSizes.dispose();
    variationCondition.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  setVariation() {
    variation.value = widget.variation;
    variationCondition.value = widget.variation.condition;
    variationQuantity.value = widget.variation.quantity.toString();
    variationPrice.value = widget.variation.price;
    variationSizes.value = widget.variation.sizes;
    variationColor.value = widget.variation.color;
    for (int i = 0; i < min(widget.variation.photos.length, 3); i++) {
      variationImages.value[i] = widget.variation.photos[i];
    }
  }

  setSizes() {
    if (widget.categoryType['size']) {
      if (widget.categoryType['sizeType'] == 2) {
        sizes = letterSizes.map((e) => e.name).toList();
      } else {
        for (int i = _currentRangeValues.start.toInt();
            i < _currentRangeValues.end.toInt();
            i++) {
          sizes.add(i.toString());
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: variationImages,
              builder: (_, images, __) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VariationImage(
                      imageUrl: (images as List<String>)[0],
                      select: (String path) {
                        variationImages.value[0] = path;
                        variationImages.value = variationImages.value;
                        variation.value = variation.value
                            .copyWith(photos: variationImages.value);
                        widget.variationData(variation.value);
                        setState(() {});
                      },
                    ),
                    VariationImage(
                      imageUrl: images[1],
                      select: (String path) {
                        if (variationImages.value[0].isEmpty) {
                          variationImages.value[0] = path;
                        } else {
                          variationImages.value[1] = path;
                        }

                        variationImages.value = variationImages.value;
                        variation.value = variation.value
                            .copyWith(photos: variationImages.value);
                        widget.variationData(variation.value);
                        setState(() {});
                      },
                    ),
                    VariationImage(
                      imageUrl: images[2],
                      select: (String path) {
                        if (variationImages.value[0].isEmpty) {
                          variationImages.value[0] = path;
                        } else if (variationImages.value[1].isEmpty) {
                          variationImages.value[1] = path;
                        } else {
                          variationImages.value[2] = path;
                        }

                        variationImages.value = variationImages.value;
                        variation.value = variation.value
                            .copyWith(photos: variationImages.value);
                        widget.variationData(variation.value);
                        setState(() {});
                      },
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Divider(),
            ),
            if (widget.categoryType['color']) ...[
              ProductTextDialog(
                name: 'Color',
                icon: Icons.color_lens,
                enabled: true,
                notifier: variationColor,
                inputType: TextInputType.text,
                select: (String color) {
                  variationColor.value = color;
                  variation.value = variation.value.copyWith(color: color);
                  widget.variationData(variation.value);
                },
              ),
            ],
            if (widget.categoryType['size']) ...[
              ProductGroupDialog(
                icon: Icons.line_weight,
                name: 'Sizes',
                notifier: variationSizes,
                enabled: true,
                groupOptions: sizes,
                select: (List<String> sizes) {
                  variationSizes.value = sizes;
                  variation.value = variation.value.copyWith(sizes: sizes);
                  widget.variationData(variation.value);
                },
              ),
            ],
            ProductListDialog(
              icon: Icons.person,
              name: 'Condition',
              notifier: variationCondition,
              enabled: true,
              dialogOptions: conditions.map((e) => e.name).toList(),
              select: (String condition) {
                variationCondition.value = condition;
                variation.value =
                    variation.value.copyWith(condition: condition);
                widget.variationData(variation.value);
              },
            ),
            ProductTextDialog(
              name: 'Price',
              icon: FeatherIcons.tag,
              inputType: TextInputType.number,
              enabled: true,
              notifier: variationPrice,
              select: (String price) {
                variationPrice.value = price;
                variation.value = variation.value.copyWith(price: price);
                widget.variationData(variation.value);
              },
            ),
            ProductTextDialog(
              name: 'Quantity',
              icon: Icons.tag,
              enabled: true,
              inputType: TextInputType.number,
              notifier: variationQuantity,
              select: (String quantity) {
                variationQuantity.value = quantity;
                variation.value =
                    variation.value.copyWith(quantity: int.tryParse(quantity)!);
                widget.variationData(variation.value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
