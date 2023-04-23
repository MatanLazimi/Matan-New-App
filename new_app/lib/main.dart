import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'other/router.dart';
import 'other/strings.dart';

Future<void> main() async {
  // load env file
  await dotenv.load(fileName: StringsAndConsts.ENV_FILE_NAME);

  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late GoRouter router;

  @override
  void initState() {
    router = ref.read(routerProvider);

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: StringsAndConsts.MAIN_BUNDLE,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
