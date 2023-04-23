import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../controller/data_provider.dart';
import '../../other/routes_enum.dart';
import '../../other/strings.dart';
import 'widgets/broker_element_widget.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(brokersListProvider.notifier).getBrokersList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final brokersList = ref.watch(brokersListProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: StringsAndConsts.APPBAR_COLOR,
        title: const Text(StringsAndConsts.HOME_TITLE),
      ),
      body: brokersList.when(
        error: (error, stackTrace) => Text(StringsAndConsts.ERROR_TO_LOAD_DATA),
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: data?.length ?? 0,
            itemBuilder: (context, index) {
              return BrokerElementWidget(
                  currentbroker: data![index],
                  onPressed: () {
                    context.goNamed(RoutesNames.BrokerDetailsScreen.name,
                        extra: data[index]);
                  });
            },
          );
        },
      ),
    );
  }
}
