import 'package:flutter/material.dart';

class ListModel {
  final int code;
  final String name;
  final String? description;
  final IconData? icon;

  ListModel(
      {required this.code, required this.name, this.description, this.icon});
}
