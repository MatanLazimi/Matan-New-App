import 'package:flutter/material.dart';

import '../../../model/broker_manage_model.dart';
import '../../../other/strings.dart';

class BrokerElementWidget extends StatefulWidget {
  final BrokerManageModel currentbroker;
  final void Function() onPressed;

  BrokerElementWidget({
    Key? key,
    required this.currentbroker,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BrokerElementWidget> createState() => _BrokerElementWidgetState();
}

class _BrokerElementWidgetState extends State<BrokerElementWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        backgroundBlendMode: BlendMode.saturation,
      ),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(right: 30),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: widget.onPressed,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Image.network(
                      height: 100,
                      width: 100,
                      StringsAndConsts.iconsPath + widget.currentbroker.in_!,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.currentbroker.bn ?? "No Name",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          child: Text(
                            widget.currentbroker.gi ?? "No description",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              wordSpacing: 1,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 20,
                          child: Text(
                            widget.currentbroker.ac ?? "No data",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              wordSpacing: 1,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
