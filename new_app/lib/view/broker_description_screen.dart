import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/broker_manage_model.dart';

class BrokerFullInfoScreen extends ConsumerStatefulWidget {
  final BrokerManageModel currentbroker;
  const BrokerFullInfoScreen({
    super.key,
    required this.currentbroker,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BrokerFullInfoScreenScreenState();
}

class _BrokerFullInfoScreenScreenState
    extends ConsumerState<BrokerFullInfoScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // list of widgets to be displayed in the navigation bar

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 54, 67, 96),
          body: Column(children: [
            // Header
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 54, 67, 96),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                widget.currentbroker.bn ?? "No Name",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          ])),
    );
  }
}
