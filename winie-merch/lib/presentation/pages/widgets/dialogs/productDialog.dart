import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/presentation/pages/merch/products/widgets/variationWidgets.dart';

class ProductGroupDialog extends StatefulWidget {
  final bool enabled;
  final String name;
  final IconData icon;
  final List<dynamic> groupOptions;
  final ValueNotifier<List<String>> notifier;
  final Function(List<String>) select;

  const ProductGroupDialog({
    Key? key,
    required this.enabled,
    required this.name,
    required this.icon,
    required this.groupOptions,
    required this.notifier,
    required this.select,
  }) : super(key: key);

  @override
  _ProductGroupDialogState createState() => _ProductGroupDialogState();
}

class _ProductGroupDialogState extends State<ProductGroupDialog> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> optionTiles(updateSheet) {
    List<Widget> tiles = [];

    tiles.add(
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Divider(),
      ),
    );

    for (int i = 0; i < widget.groupOptions.length; i++) {
      tiles.add(
        VariationSize(
          label: widget.groupOptions[i],
          select: (val) {
            updateSheet(() {
              if (widget.notifier.value.contains(val)) {
                widget.notifier.value.remove(val);
              } else {
                widget.notifier.value.add(val);
              }
            });
          },
          selected: widget.notifier.value.contains(widget.groupOptions[i]),
        ),
      );
    }

    tiles.add(
      SizedBox(height: 20),
    );
    return tiles;
  }

  groupDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      builder: (BuildContext bc) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Select ${widget.name}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: optionTiles(setState),
                    ),
                  )
                ],
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
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  '${widget.name}:',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (widget.enabled) {
                    groupDialog(context);
                  }
                },
                child: Container(
                  width: size.width * 0.5,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: widget.enabled ? Colors.green : Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          widget.icon,
                          size: 12,
                          color: widget.enabled ? Colors.green : Colors.grey,
                        ),
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: widget.notifier,
                            builder: (_, value, __) => Text(
                              (value as List<String>).isEmpty
                                  ? 'Selections'
                                  : value.join(', '),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    widget.enabled ? Colors.green : Colors.grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductTextDialog extends StatefulWidget {
  final bool enabled;
  final String name;
  final IconData icon;
  final TextInputType inputType;
  final ValueNotifier notifier;
  final Function(String) select;

  const ProductTextDialog({
    Key? key,
    this.enabled = true,
    required this.name,
    required this.icon,
    required this.notifier,
    required this.select,
    required this.inputType,
  }) : super(key: key);

  @override
  _ProductTextDialogState createState() => _ProductTextDialogState();
}

class _ProductTextDialogState extends State<ProductTextDialog> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.notifier.value;
  }

  textDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (builder, setState) {
          return AlertDialog(
            titlePadding: EdgeInsets.only(top: 15),
            contentPadding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 10,
              bottom: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            title: Center(
              child: Text(
                widget.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextField(
                    autofocus: true,
                    autocorrect: false,
                    keyboardType: widget.inputType,
                    textAlign: TextAlign.center,
                    controller: controller,
                    onChanged: (String value) {},
                    decoration: InputDecoration(
                      counterText: '',
                      errorStyle: TextStyle(
                        fontSize: 11,
                        color: Colors.orangeAccent,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 15,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      InkWell(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 15,
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          widget.select(controller.text);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  '${widget.name}:',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (widget.enabled) {
                    textDialog(context);
                  }
                },
                child: Container(
                  width: size.width * 0.5,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: widget.enabled ? Colors.green : Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          widget.icon,
                          size: 12,
                          color: widget.enabled ? Colors.green : Colors.grey,
                        ),
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: widget.notifier,
                            builder: (_, value, __) => Text(
                              (value as String).isEmpty
                                  ? 'Enter'
                                  : value.capitalize,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    widget.enabled ? Colors.green : Colors.grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductListDialog extends StatefulWidget {
  final bool enabled;
  final String name;
  final IconData icon;
  final ValueNotifier<String> notifier;
  final List<dynamic> dialogOptions;
  final Function(String) select;

  const ProductListDialog({
    Key? key,
    required this.name,
    required this.icon,
    required this.notifier,
    required this.dialogOptions,
    required this.enabled,
    required this.select,
  }) : super(key: key);

  @override
  _ProductListDialogState createState() => _ProductListDialogState();
}

class _ProductListDialogState extends State<ProductListDialog> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> optionTiles() {
    List<Widget> tiles = [];

    tiles.add(
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Divider(),
      ),
    );

    for (int i = 0; i < widget.dialogOptions.length; i++) {
      tiles.add(
        ListTile(
          leading: Icon(
            widget.icon,
            color: Colors.green,
          ),
          title: Text(
            widget.dialogOptions[i],
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          trailing: Icon(
            Icons.check,
            color:
                widget.notifier.value.toLowerCase() == widget.dialogOptions[i]
                    ? Colors.green
                    : Colors.transparent,
          ),
          dense: true,
          onTap: () {
            widget.select(widget.dialogOptions[i]);
            Navigator.pop(context);
          },
        ),
      );
    }

    tiles.add(
      SizedBox(height: 20),
    );
    return tiles;
  }

  optionDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    "Select ${widget.name}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Column(
                children: optionTiles(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  '${widget.name}:',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (widget.enabled) {
                    optionDialog(context);
                  }
                },
                child: Container(
                  width: size.width * 0.5,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: widget.enabled ? Colors.green : Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          widget.icon,
                          size: 12,
                          color: widget.enabled ? Colors.green : Colors.grey,
                        ),
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: widget.notifier,
                            builder: (_, value, __) => Text(
                              (value as String).isEmpty
                                  ? 'Select'
                                  : value.capitalize,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    widget.enabled ? Colors.green : Colors.grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
