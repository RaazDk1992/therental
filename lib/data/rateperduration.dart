import 'package:flutter/material.dart';

List<DropdownMenuItem> get rateList {
  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(
      child: Text('प्रति महिना'),
      value: 'per_month',
    ),
    DropdownMenuItem(
      child: Text('प्रतिदिन'),
      value: 'per_day',
    ),
    DropdownMenuItem(
      child: Text('प्रतिघण्टा'),
      value: 'per_hour',
    )
  ];
  return items;
}
