// service to manage broker list and current broker

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_app/model/broker_manage_model.dart';
import 'package:new_app/model/main_object_model.dart';
import 'package:new_app/other/http_client_provider.dart';
import 'package:new_app/other/strings.dart';

// we use this provider to hold the current broker info model
final currentTopBrokerProvider = StateProvider((ref) {
  return AsyncValue<BrokerManageModel?>.loading();
});

final brokersListProvider = StateNotifierProvider<BrokersListStateNotifier,
    AsyncValue<List<BrokerManageModel>?>>(
  (ref) => BrokersListStateNotifier(ref),
);

class BrokersListStateNotifier
    extends StateNotifier<AsyncValue<List<BrokerManageModel>?>> {
  BrokersListStateNotifier(this.ref) : super(const AsyncValue.loading());

  final Ref ref;
  List<BrokerManageModel> get _data => state.valueOrNull ?? [];

  // get broker list
  Future<AsyncValue<List<BrokerManageModel>?>> getBrokersList() async {
    state = const AsyncValue.loading();

    final url = StringsAndConsts.apiUrl;
    final response = await ref.read(httpClientProvider.notifier).get(url);

    //replace 'in' with 'in_' to avoid reserved word
    response?.data['brokerManageArray'].map((e) {
      var temp = e['in'];
      e.remove('in');
      e['in_'] = temp;
      return e;
    }).toList();

    final brokersList = AsyncData(
        MainObjectModel.fromJson(response?.data).brokerManageArray ?? []);

    // update the user's trials refs
    state = brokersList;

    return state;
  }
}
