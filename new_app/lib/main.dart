import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'other/strings.dart';
import 'view/home_screen/top_brokers_screen.dart';

Future<void> main() async {
  // load env file
  await dotenv.load(fileName: StringsAndConsts.ENV_FILE_NAME);

  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsAndConsts.MAIN_BUNDLE,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
