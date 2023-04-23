import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../model/broker_manage_model.dart';
import '../other/strings.dart';

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
          appBar: AppBar(
            //leading is the back button
            leading: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
            ),
            backgroundColor: StringsAndConsts.APPBAR_COLOR,
            title: Text(widget.currentbroker.bn ?? "No Name",
                style: const TextStyle(
                  color: Colors.white,
                )),
          ),
          backgroundColor: Colors.grey[500],
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //Display the broker's name and the broker's description in a column widget
              children: [
                //more details
                const SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "GENERAL INFORMATION",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Broker Type: \n" +
                            (widget.currentbroker.tp ?? "No Type") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Country: \n" +
                            (widget.currentbroker.comicmnt ?? "No Country") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Operating since year: \n" +
                            (widget.currentbroker.os ?? "No Operating System") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Numbers of employees: \n" +
                            (widget.currentbroker.noe.toString() ??
                                "No Number of Employees") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "International Offices: \n" +
                            (widget.currentbroker.it ??
                                "No International Offices") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Regulations: \n" +
                            (widget.currentbroker.rt ?? "No Regulations") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Address: \n" +
                            (widget.currentbroker.ad ?? "No Address") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Broker Status: \n" +
                            (widget.currentbroker.bs ?? "No Broker Status") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Accepts US Clients: \n" +
                            ((widget.currentbroker?.auc ?? false)
                                ? 'Yes'
                                : 'No') +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Center(
                        child: Container(
                          color: Colors.black,
                          child: Text(
                            "ACCOUNT OPTIONS",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Account currency: \n" +
                            (widget.currentbroker.ac ?? "No Account Currency") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Funding/Withdrawal Methods: \n" +
                            (widget.currentbroker.fwm ??
                                "No Funding/Withdrawal Methods") +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Swap free accounts: \n" +
                            ((widget.currentbroker?.sfa ?? false)
                                ? 'Yes'
                                : 'No') +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Segregated accounts: \n" +
                            ((widget.currentbroker?.sega ?? false)
                                ? 'Yes'
                                : 'No') +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Interest on margin: \n" +
                            ((widget.currentbroker?.iom ?? false)
                                ? 'Yes'
                                : 'No') +
                            '\n',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
