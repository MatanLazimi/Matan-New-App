// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class StringsAndConsts {
  //Strings
  static const String HOME_TITLE = 'Top Brokers';
  static String ERROR_TO_LOAD_DATA = 'Error to load data';

  //Consts
  static const String MAIN_BUNDLE = 'Flutter Matan Demo';
  static const Duration TIMEOUT = Duration(milliseconds: 7000);

  //Colors
  static Color? APPBAR_COLOR = Colors.grey[800];

  static const String ENV_FILE_NAME = 'development.env';

  static String get iconsPath {
    return dotenv.env['ICONS_PATH'] ?? 'url not found';
  }

  static String get apiUrl {
    return dotenv.env['API_URL'] ?? 'url not found';
  }
}
