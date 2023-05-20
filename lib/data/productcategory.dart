import 'package:flutter/material.dart';

List<DropdownMenuItem> get productList {
  List<DropdownMenuItem<String>> items = [
    const DropdownMenuItem(child: Text("घर"), value: "home"),
    const DropdownMenuItem(child: Text("गाडी"), value: "vehicle"),
    const DropdownMenuItem(child: Text("कपडा"), value: "clothes"),
    const DropdownMenuItem(child: Text("जग्गा"), value: "land"),
  ];
  return items;
}
