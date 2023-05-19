// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "login": "Login",
  "register": "Register",
  "useasguest": "Use as a Guest",
  "Username": "UserName",
  "search": "Search",
  "Password": "Password",
  "firstname": "First Name",
  "lastname": "Last Name",
  "email": "e-mail",
  "phone": "Phone",
  "password": "Password",
  "firstnamevalidator": "Please enter your first name",
  "clothing": "Clothing",
  "house": "House",
  "retail": "Retail"
};
static const Map<String,dynamic> ne = {
  "login": "लग-इन",
  "register": "दर्ता",
  "useasguest": " सामान्य प्रयोग",
  "search": "खोजी",
  "Password": "पासवर्ड",
  "firstname": "नाम",
  "lastname": "थर",
  "email": "ई-मेल",
  "phone": "फोन",
  "password": "पासवर्ड",
  "firstnamevalidator": "कृपया आफ्नो नाम प्रविष्ट गर्नुहोस्",
  "clothing": "कपडा",
  "house": "घर",
  "retail": "जग्गा"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ne": ne};
}
