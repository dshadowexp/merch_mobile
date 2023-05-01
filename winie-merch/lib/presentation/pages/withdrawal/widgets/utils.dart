bool isNumeric(String s) {
  if (s.isEmpty) {
    return false;
  }
  try {
    var amnt = double.parse(s);
    return amnt >= 10.0;
  } catch (e) {
    return false;
  }
}

String? amountValidation(String amount) {
  if (amount.isEmpty) {
    return "Enter valid amount";
  }
  try {
    var amnt = double.parse(amount);
    return amnt >= 10.0 ? null : "Minimum amount is GH₵ 10.0";
  } catch (e) {
    return "Enter valid amount";
  }
}
