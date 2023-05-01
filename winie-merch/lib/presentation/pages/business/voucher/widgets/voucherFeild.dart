import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:winie_merch/domain/core/extensions.dart';

class ExipryDate extends StatefulWidget {
  final Function(String) date;
  final String initialDate;
  const ExipryDate({
    Key? key,
    required this.date,
    required this.initialDate,
  }) : super(key: key);

  @override
  _ExipryDateState createState() => _ExipryDateState();
}

class _ExipryDateState extends State<ExipryDate> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (widget.initialDate != null && widget.initialDate.length > 4) {
        setState(() {
          text = newdateFormat(DateTime.parse(widget.initialDate));
          widget.date(widget.initialDate);
        });
      }
    });
  }

  DateTime _date = DateTime.now();

  String text = "Select Date";
  String today = DateFormat("yyyy-M-dd").format(DateTime.now());
  Future<Null> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
        widget.date(picked.toIso8601String());
        text = newdateFormat(_date);
      });
    }
  }

  String newdateFormat(DateTime date) {
    return DateFormat("yyyy-M-dd").format(date);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDate(context),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 4),
              width: MediaQuery.of(context).size.width * 0.2,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VoucherField extends StatefulWidget {
  final TextEditingController controller;
  final String type;
  final String title;

  const VoucherField({
    Key? key,
    required this.controller,
    required this.type,
    required this.title,
  }) : super(key: key);

  @override
  _VoucherFieldState createState() => _VoucherFieldState();
}

class _VoucherFieldState extends State<VoucherField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 4),
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    (widget.type == "cash"
                            ? " GH₵ "
                            : widget.type == "percentage"
                                ? "%"
                                : widget.type == "users"
                                    ? "users"
                                    : "")
                        .capitalize,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: widget.controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
