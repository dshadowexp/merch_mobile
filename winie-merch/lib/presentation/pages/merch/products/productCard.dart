import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/pages/widgets/expandableCircleAvatarImage.dart';
import 'package:winie_merch/presentation/pages/widgets/loader.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../injection.dart';

final storeManagerAPI = getIt<IStoreManagerRepository>();

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(
          ProductInfoRoute(product: widget.product),
        );
      },
      child: Container(
        margin: EdgeInsets.all(9),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: widget.product.variations[0].photos[0],
                      placeholder: (context, url) => Loader(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                widget.product.name.capitalizeFirstofEach,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color:
                      widget.product.verified! ? Colors.green : Colors.orange,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(2),
                child: !widget.product.verified!
                    ? Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 12,
                      )
                    : Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductInfoPage extends StatefulWidget {
  final Product product;

  const ProductInfoPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final productNotifier = ValueNotifier<Product>(Product.empty());

  @override
  void initState() {
    productNotifier.value = widget.product;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          widget.product.id.getOrCrash().substring(0, 6),
          style: GoogleFonts.mulish().copyWith(),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: SafeArea(
          child: _ProductActions(
            productNotifier: productNotifier,
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: productNotifier,
        builder: (_, product, __) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      (product as Product).name.capitalizeFirstofEach,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Wrap(
                children: [
                  _ProductTextDetail(
                    icon: Icons.person,
                    label: product.category,
                  ),
                  _ProductTextDetail(
                    icon: Icons.category,
                    label: product.subCategory,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20,
              ),
              child: Divider(),
            ),
            Center(
              child: Wrap(
                children: [
                  for (int i = 0; i < product.variations.length; i++) ...[
                    VariationCard(
                      productCategory: widget.product.category,
                      productId: widget.product.id,
                      variation: widget.product.variations[i],
                      canRemove: product.variations.length > 1,
                      removeVariation: () async {
                        var variats = productNotifier.value.variations;
                        var variat = variats.removeAt(i);
                        productNotifier.value =
                            productNotifier.value.copyWith(variations: variats);
                        setState(() {});
                        final response = await storeManagerAPI.deleteVariation(
                          product.id,
                          variat.id,
                        );
                        if (response) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Variation removed'),
                            duration: Duration(seconds: 3),
                          ));
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Something went wrong'),
                            duration: Duration(seconds: 3),
                          ));
                        }
                      },
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductTextDetail extends StatelessWidget {
  final String label;
  final IconData icon;

  const _ProductTextDetail({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.green,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
            color: Colors.green,
          ),
          Text(
            label.capitalize,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class _ProductActions extends StatefulWidget {
  final ValueNotifier<Product> productNotifier;

  _ProductActions({
    Key? key,
    required this.productNotifier,
  }) : super(key: key);

  @override
  __ProductActionsState createState() => __ProductActionsState();
}

class __ProductActionsState extends State<_ProductActions> {
  void share(BuildContext context) {
    Share.share(
      widget.productNotifier.value.dynamicLink,
      subject: widget.productNotifier.value.name,
    );
  }

  showResult(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ActionIcon(
          icon: FeatherIcons.link,
          color: Colors.green,
          text: 'Share Link',
          function: () {
            share(context);
          },
        ),
        _ActionIcon(
          icon: FeatherIcons.plus,
          color: Colors.teal,
          text: 'Add variation',
          function: () {
            AutoRouter.of(context).navigate(VariationDetialRoute(
              isNew: true,
              productId: widget.productNotifier.value.id,
              variation: ValueNotifier(Variation.empty()),
              categoryType: AppData.categoriesData[
                  widget.productNotifier.value.category.toLowerCase()],
              addVariation: (Variation newVariation) {
                var variats = widget.productNotifier.value.variations;
                variats.add(newVariation);
                widget.productNotifier.value =
                    widget.productNotifier.value.copyWith(variations: variats);
                setState(() {});
              },
            ));
          },
        ),
        _ActionIcon(
          icon: FeatherIcons.edit2,
          color: Colors.blue,
          text: 'Edit Details',
          function: () async {
            AutoRouter.of(context).push(
              ProductDetailRoute(
                isNew: false,
                productNotifier: widget.productNotifier,
              ),
            );
          },
        ),
        _ActionIcon(
          icon: FeatherIcons.trash2,
          color: Colors.red,
          text: 'Delete Product',
          function: () async {
            authQuestion(
              context,
              'Delete Product',
              "All product data will be lost. Are you sure you want to delete?",
              (answer) async {
                if (answer) {
                  final response = await storeManagerAPI
                      .deleteProduct(widget.productNotifier.value);
                  if (response) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Product deleted'),
                      duration: Duration(seconds: 3),
                    ));
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Something went wrong'),
                      duration: Duration(seconds: 3),
                    ));
                  }
                }
              },
            );
          },
        ),
      ],
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Function() function;

  const _ActionIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          color: color,
          onPressed: function,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 9,
            color: color,
          ),
        ),
      ],
    );
  }
}

class VariationCard extends StatefulWidget {
  final UniqueId productId;
  final String productCategory;
  final Variation variation;
  final bool canRemove;
  final Function removeVariation;

  VariationCard({
    Key? key,
    required this.productCategory,
    required this.productId,
    required this.variation,
    required this.canRemove,
    required this.removeVariation,
  }) : super(key: key);

  @override
  _VariationCardState createState() => _VariationCardState();
}

class _VariationCardState extends State<VariationCard> {
  final variationNotifier = ValueNotifier<Variation>(Variation.empty());

  @override
  void initState() {
    variationNotifier.value = widget.variation;
    super.initState();
  }

  @override
  void dispose() {
    variationNotifier.dispose();
    super.dispose();
  }

  showResult(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 2),
    ));
  }

  productSelectDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      builder: (BuildContext bc) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SafeArea(
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      margin: EdgeInsets.only(top: 10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Variation:",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            if (widget.canRemove) ...[
                              TextButton(
                                onPressed: () {
                                  authQuestion(
                                    context,
                                    'Delete Variation',
                                    "All variation data will be lost. Are you sure you want to delete?",
                                    (answer) async {
                                      if (answer) {
                                        await widget.removeVariation();
                                      }
                                    },
                                  );
                                },
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                            TextButton(
                              onPressed: () {
                                AutoRouter.of(context)
                                    .navigate(VariationDetialRoute(
                                  isNew: false,
                                  productId: widget.productId,
                                  variation: variationNotifier,
                                  categoryType: AppData.categoriesData[
                                      widget.productCategory.toLowerCase()],
                                ));
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ViewData(
                          icon: FeatherIcons.eye,
                          title: 'Views',
                          data: variationNotifier.value.views.toString(),
                        ),
                        ViewData(
                          icon: FeatherIcons.shoppingCart,
                          title: 'Carted',
                          data: variationNotifier.value.inCart.toString(),
                        ),
                        ViewData(
                          icon: FeatherIcons.shoppingBag,
                          title: 'Buys',
                          data: variationNotifier.value.buys.toString(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExpandableCircleAvatarImage(
                          imageUrl: widget.variation.photos[0],
                        ),
                        EditableData(
                          icon: FeatherIcons.tag,
                          data: 'Gh ${variationNotifier.value.price}',
                        ),
                        EditableData(
                          icon: Icons.tag,
                          data: '${variationNotifier.value.quantity}',
                        ),
                      ],
                    ),
                    if (variationNotifier.value.color != null &&
                        variationNotifier.value.color.isNotEmpty) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(),
                            child: Text(
                              'Color:',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: size.width * 0.5,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.color_lens,
                                    size: 12,
                                    color: Colors.black,
                                  ),
                                  Expanded(
                                    child: Text(
                                      variationNotifier.value.color,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                    if (variationNotifier.value.sizes != null &&
                        variationNotifier.value.sizes.isNotEmpty) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(),
                            child: Text(
                              'Sizes:',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: size.width * 0.5,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.line_weight,
                                    size: 12,
                                    color: Colors.black,
                                  ),
                                  Expanded(
                                    child: Text(
                                      variationNotifier.value.sizes.join(', '),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          productSelectDialog(context);
        },
        child: ValueListenableBuilder(
          valueListenable: variationNotifier,
          builder: (_, variation, __) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: (variation as Variation).photos[0].contains('firebase')
                    ? CircleAvatar(
                        radius: size.width * 0.1,
                        backgroundImage: CachedNetworkImageProvider(
                          variation.photos[0],
                        ),
                        backgroundColor: Colors.transparent,
                      )
                    : CircleAvatar(
                        radius: size.width * 0.1,
                        backgroundImage: FileImage(
                          File(variation.photos[0]),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '${variation.quantity}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '  |  ',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Gh ${double.parse(variation.price).toStringAsFixed(2)}',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditableData extends StatelessWidget {
  final IconData icon;
  final String data;

  const EditableData({
    Key? key,
    required this.icon,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Icon(
            icon,
            size: 15,
            color: Colors.black,
          ),
        ),
        Text(
          data,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class ViewData extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  const ViewData({
    Key? key,
    required this.icon,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(
                icon,
                size: 10,
              ),
            ),
            Text(
              title,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            data,
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
