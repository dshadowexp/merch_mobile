import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/extensions.dart';

class CustomOptions extends StatefulWidget {
  final List<OptionModel> list;
  final OptionModel selected;
  final Function(OptionModel) onSelect;

  const CustomOptions({
    Key? key,
    required this.list,
    required this.selected,
    required this.onSelect,
  }) : super(key: key);

  @override
  _CustomOptionsState createState() => _CustomOptionsState();
}

class _CustomOptionsState extends State<CustomOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: EdgeInsets.symmetric(vertical: 2),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            widget.onSelect(widget.list[index]);
          },
          child: OptionCard(
            data: widget.list[index],
            selected: widget.selected.val == widget.list[index].val,
          ),
        ),
      ),
    );
  }
}

class OptionCard extends StatefulWidget {
  final OptionModel data;
  final bool selected;

  const OptionCard({
    Key? key,
    required this.data,
    required this.selected,
  }) : super(key: key);
  @override
  _OptionCardState createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          if (widget.data.icon != null) ...[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: widget.selected ? Colors.green : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.selected ? Colors.green : Colors.transparent,
                ),
              ),
              child: Icon(
                widget.data.icon,
                color: widget.selected ? Colors.white : Colors.grey,
                size: 12,
              ),
            ),
            SizedBox(width: 5),
          ],
          Text(
            widget.data.name.capitalizeFirstofEach,
            style: TextStyle(
              fontSize: 12,
              color: widget.selected ? Colors.black87 : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class OptionModel {
  String name;
  int val;
  IconData icon;

  OptionModel({
    required this.val,
    required this.icon,
    required this.name,
  });
}
