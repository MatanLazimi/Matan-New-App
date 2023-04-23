// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class StringsAndConsts {
  //Strings
  static const String HOME_TITLE = 'Top Brokers';

  //Consts
  static const String MAIN_BUNDLE = 'Flutter Matan Demo';

  //Colors
  static Color? APPBAR_COLOR = Colors.grey[800];

  static String get apiUrl {
    return dotenv.env['API_URL'] ?? 'url not found';
  }
}
