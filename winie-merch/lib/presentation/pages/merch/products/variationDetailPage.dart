import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart' as d;
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/presentation/pages/account/widgets/bugReport.dart';
import 'package:winie_merch/presentation/pages/merch/products/widgets/variationScreen.dart';

import '../../../../injection.dart';

class VariationDetialPage extends StatefulWidget {
  final bool isNew;
  final UniqueId productId;
  final ValueNotifier<Variation> variation;
  final Map categoryType;
  final Function(Variation)? addVariation;

  const VariationDetialPage({
    Key? key,
    required this.isNew,
    required this.productId,
    required this.variation,
    required this.categoryType,
    this.addVariation,
  }) : super(key: key);

  @override
  _VariationDetialPageState createState() => _VariationDetialPageState();
}

class _VariationDetialPageState extends State<VariationDetialPage> {
  final storeAPI = getIt<IStoreManagerRepository>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool validVariations() {
    try {
      bool hasPrice = widget.variation.value.price.isNotEmpty;
      bool hasQuantity = widget.variation.value.quantity > 0;
      String hasImages = widget.variation.value.photos.join();

      return hasPrice && hasQuantity && hasImages.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Variation ${widget.isNew ? 'Create' : 'Edit'}",
          style: GoogleFonts.mulish().copyWith(
            fontSize: 17,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: VariationScreen(
        variation: widget.variation.value,
        categoryType: widget.categoryType,
        variationData: (Variation variation) {
          widget.variation.value = variation;
        },
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (widget.isNew) ...[
                TextButton(
                  onPressed: () async {
                    if (validVariations()) {
                      bool? response;
                      widget.addVariation!(widget.variation.value);
                      await showAsyncReportDialog(
                        context,
                        () async {
                          response = await storeAPI.addVariation(
                              widget.productId, widget.variation.value);
                        },
                      );

                      if (response!) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Variation updated'),
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
                        content: Text('Variation is incomplete'),
                        duration: Duration(seconds: 3),
                      ));
                    }
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ] else ...[
                TextButton(
                  onPressed: () async {
                    if (true) {
                      if (validVariations()) {
                        bool? response;
                        await showAsyncReportDialog(
                          context,
                          () async {
                            response = await storeAPI.updateVariation(
                                widget.productId, widget.variation.value);
                          },
                        );

                        if (response!) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Variation updated'),
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
                          content: Text('Variation is incomplete'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    }
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
