import 'optionsList.dart';

List<ListModel> formListModel(List<String> listString) {
  List<ListModel> result = [];
  for (int i = 0; i < listString.length; i++) {
    result.add(ListModel(code: i, name: listString[i]));
  }
  return result;
}

List<ListModel> genderAndAge = [
  ListModel(code: 1, name: "Men"),
  ListModel(code: 2, name: "Women"),
  ListModel(code: 3, name: "Unisex"),
];
List<ListModel> conditions = [
  ListModel(code: 1, name: "New"),
  ListModel(code: 2, name: "Used"),
];

List<ListModel> letterSizes = [
  ListModel(code: 1, name: "XS"),
  ListModel(code: 2, name: "S"),
  ListModel(code: 3, name: "M"),
  ListModel(code: 4, name: "L"),
  ListModel(code: 5, name: "XL"),
  ListModel(code: 6, name: "XXL"),
];

List<ListModel> networks = [
  ListModel(code: 1, name: "MTN"),
  ListModel(code: 2, name: "Vodafone"),
  ListModel(code: 3, name: "AirtelTigo"),
];

List<ListModel> time = [
  ListModel(code: 1, name: "5-30 min"),
  ListModel(code: 2, name: "30-60 min"),
  ListModel(code: 3, name: "1-3 hours"),
  ListModel(code: 4, name: "3-7 hours"),
  ListModel(code: 5, name: "7-12 hours"),
  ListModel(code: 6, name: "12-24 hours"),
  ListModel(code: 7, name: "1-3 days"),
];

List<ListModel> voucherOption = [
  ListModel(code: 1, name: "product"),
  ListModel(code: 2, name: "delivery"),
];
List<ListModel> voucherType = [
  ListModel(code: 1, name: "cash"),
  ListModel(code: 2, name: "percentage"),
];
