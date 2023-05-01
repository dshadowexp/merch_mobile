import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';

class SetupForms extends StatefulWidget {
  final String description;
  final ValueNotifier<String> notifier;
  final TextInputType inputType;
  final IconData? icon;
  final bool enabled;
  final Function(String)? validation;
  final Function(String?)? onChange;

  const SetupForms({
    required this.description,
    required this.notifier,
    this.icon,
    this.inputType = TextInputType.text,
    this.enabled = true,
    this.onChange,
    this.validation,
  });

  @override
  _SetupFormsState createState() => _SetupFormsState();
}

class _SetupFormsState extends State<SetupForms> {
  TextEditingController controller = TextEditingController();
  FocusNode _focus = new FocusNode();
  final _inFocus = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    controller.text = widget.notifier.value;
    _focus.addListener(_onFocusChange);

    if (!widget.enabled) {
      widget.notifier.addListener(() {
        controller.text = widget.notifier.value;
      });
    }
  }

  void _onFocusChange() {
    _inFocus.value = _focus.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ValueListenableBuilder(
            valueListenable: _inFocus,
            builder: (_, focus, __) => Text(
              widget.description,
              style: TextStyle(
                fontSize: 13,
                color: focus as bool ? Colors.green : Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 5),
          ValueListenableBuilder(
            valueListenable: widget.notifier,
            builder: (_, value, __) => TextField(
              autocorrect: true,
              keyboardType: widget.inputType,
              focusNode: _focus,
              enabled: widget.enabled,
              controller: controller,
              onChanged: widget.onChange,
              maxLines: null,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                isDense: true,
                errorStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
                errorText: widget.validation == null
                    ? null
                    : widget.validation!(value as String),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                suffixIcon: ValueListenableBuilder(
                  valueListenable: _inFocus,
                  builder: (_, focus, __) => Icon(
                    widget.icon,
                    color: focus as bool ? Colors.green : Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

validateEmail(String value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty) {
    return null;
  }
  if (!regex.hasMatch(value) || value == null)
    return 'Enter a valid email address';
  else
    return null;
}

validateContactNumber(String value) {
  final result = validatePhoneNumber(value);
  if (value.isEmpty) {
    return null;
  }
  if (value.length < 10) {
    return 'Enter valid phone number';
  } else {
    return null;
  }
}
