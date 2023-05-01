import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/presentation/pages/widgets/optionsList.dart';

class OptionSelector extends StatefulWidget {
  final String detailName;
  final String detailValue;
  final String heading;
  final detailIcon;
  final List<ListModel> detailList;
  final detailChanged;
  final canChange;
  bool changeColor;

  OptionSelector({
    Key? key,
    required this.detailName,
    required this.heading,
    this.changeColor = false,
    required this.detailValue,
    required this.detailList,
    required this.detailIcon,
    required this.detailChanged,
    required this.canChange,
  }) : super(key: key);

  @override
  _OptionSelectorState createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  List<Widget> detailListTile = [];
  int? currentTile;

  @override
  void initState() {
    super.initState();
  }

  void _buildDetailList() {
    for (int i = 0; i < widget.detailList.length; i++) {
      detailListTile.add(
        ListTile(
          leading: Icon(widget.detailIcon),
          title: Text(widget.detailList[i].name.capitalizeFirstofEach),
          onTap: () {
            widget.detailChanged(widget.detailList[i].name);
            Navigator.of(context).pop();
          },
        ),
      );
    }
  }

  List<Widget> visibilityTiles() {
    List<Widget> tiles = [
      Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.heading,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ];
    for (int i = 0; i < widget.detailList.length; i++) {
      tiles.add(
        ListTile(
          leading: Icon(
            widget.detailIcon,
            color: Colors.blue,
          ),
          title: Text(
            widget.detailList[i].name.capitalizeFirstofEach,
          ),
          trailing: i == currentTile
              ? Icon(Icons.check, color: Colors.blue)
              : Icon(Icons.adjust, color: Colors.white),
          onTap: () {
            setState(() {
              currentTile = i;
              widget.detailChanged(widget.detailList[i].name);
              Navigator.of(context).pop();
            });
          },
        ),
      );
    }
    return tiles;
  }

  void _showDetailSelector(context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                children: visibilityTiles(),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _buildDetailList();
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: (size.width / 2) - 27,
              child: Text(
                widget.detailName,
                style: TextStyle(
                  color: widget.changeColor
                      ? Colors.grey
                      : !widget.canChange
                          ? Colors.grey
                          : Colors.green.shade400,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (widget.canChange) {
                  _showDetailSelector(context);
                }
              },
              child: SizedBox(
                width: (size.width / 2) - 27,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: widget.detailValue.capitalizeFirstofEach,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    widget.canChange
                        ? Icon(Icons.arrow_drop_down)
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.black45),
      ],
    );
  }
}
