import 'package:flutter/material.dart';

import '../other/strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: StringsAndConsts.APPBAR_COLOR,
        title: const Text(StringsAndConsts.HOME_TITLE),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return const Text('Hello');
          },
          itemCount: 10),
    );
  }
}
