import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs/productDialog.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';
import 'package:winie_merch/presentation/pages/widgets/infoCard.dart';
import 'package:winie_merch/presentation/pages/widgets/productFieldsList.dart';

class ProductInfo extends StatefulWidget {
  final bool isNew;
  final ValueNotifier<Product> productNotifier;
  final ValueNotifier<int> variationsNotifier;

  const ProductInfo({
    Key? key,
    required this.isNew,
    required this.productNotifier,
    required this.variationsNotifier,
  }) : super(key: key);

  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  final productName = ValueNotifier<String>("");
  final productBrand = ValueNotifier<String>("");
  final productDescription = ValueNotifier<String>("");
  final productCategory = ValueNotifier<String>("");
  final productSubCategory = ValueNotifier<String>("");
  final productAudience = ValueNotifier<String>("");
  final productVariations = ValueNotifier<String>("1");

  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    categories = AppData.categoriesData.keys.toList();
    setProduct();
  }

  @override
  void dispose() {
    productAudience.dispose();
    productBrand.dispose();
    productName.dispose();
    productDescription.dispose();
    productCategory.dispose();
    productSubCategory.dispose();
    productVariations.dispose();
    super.dispose();
  }

  setProduct() {
    productName.value = widget.productNotifier.value.name;
    productBrand.value = widget.productNotifier.value.brand ?? '';
    productDescription.value = widget.productNotifier.value.description;
    productCategory.value = widget.productNotifier.value.category;
    productSubCategory.value = widget.productNotifier.value.subCategory;
    productAudience.value = widget.productNotifier.value.audiences.isNotEmpty
        ? widget.productNotifier.value.audiences[0]
        : '';
    productVariations.value = widget.variationsNotifier.value.toString();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoCard(
            info:
                "Add detailed information about the product you want to create and select all that apply",
          ),
          SetupForms(
            notifier: productName,
            description: "Name",
            icon: FeatherIcons.user,
            onChange: (val) {
              widget.productNotifier.value =
                  widget.productNotifier.value.copyWith(name: val!);
            },
          ),
          SetupForms(
            notifier: productBrand,
            description: "Brand",
            icon: FeatherIcons.type,
            onChange: (val) {
              widget.productNotifier.value =
                  widget.productNotifier.value.copyWith(brand: val!);
            },
          ),
          SetupForms(
            notifier: productDescription,
            description: "Description",
            icon: FeatherIcons.info,
            onChange: (val) {
              widget.productNotifier.value =
                  widget.productNotifier.value.copyWith(description: val!);
            },
          ),
          ProductListDialog(
            name: 'Category',
            icon: Icons.category,
            notifier: productCategory,
            enabled: widget.isNew,
            dialogOptions: categories,
            select: (String category) {
              productCategory.value = category;

              productSubCategory.value = '';
              widget.productNotifier.value = widget.productNotifier.value
                  .copyWith(category: productCategory.value);
            },
          ),
          ValueListenableBuilder(
            valueListenable: productCategory,
            builder: (_, category, __) => ProductListDialog(
              icon: Icons.category,
              enabled: (category as String).isNotEmpty,
              notifier: productSubCategory,
              name: 'Sub-Category',
              dialogOptions: category.isNotEmpty
                  ? AppData.categoriesData[productCategory.value]
                      ['subcategories']
                  : [],
              select: (String subCategory) {
                productSubCategory.value = subCategory;
                widget.productNotifier.value = widget.productNotifier.value
                    .copyWith(subCategory: productSubCategory.value);
              },
            ),
          ),
          ProductListDialog(
            icon: Icons.person,
            name: 'Audience',
            notifier: productAudience,
            enabled: true,
            dialogOptions: genderAndAge.map((e) => e.name).toList(),
            select: (String audience) {
              productAudience.value = audience;
              widget.productNotifier.value = widget.productNotifier.value
                  .copyWith(audiences: [productAudience.value]);
            },
          ),
          InfoCard(
            color: Colors.black,
            info:
                "Variations constitute the same kind of product with different color, and texture...",
          ),
          ProductTextDialog(
            name: 'Variations',
            icon: FeatherIcons.database,
            enabled: widget.isNew,
            inputType: TextInputType.number,
            notifier: productVariations,
            select: (String variations) {
              productVariations.value = variations;
              widget.variationsNotifier.value = int.tryParse(variations)!;
            },
          ),
        ],
      ),
    );
  }
}
