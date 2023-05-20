import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get languageList {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("EN"), value: "en"),
    const DropdownMenuItem(child: Text("ने"), value: "ne"),
  ];
  return menuItems;
}
