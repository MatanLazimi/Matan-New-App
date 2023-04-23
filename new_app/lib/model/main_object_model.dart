import 'package:freezed_annotation/freezed_annotation.dart';

import 'broker_manage_model.dart';

part 'main_object_model.freezed.dart';
part 'main_object_model.g.dart';

// model class for crop
@freezed
class MainObjectModel with _$MainObjectModel {
  const MainObjectModel._();
  const factory MainObjectModel({
    int? sponsorBrokerManageOid,
    List<BrokerManageModel>? brokerManageArray,
  }) = _MainObjectModel;

  factory MainObjectModel.fromJson(Map<String, Object?> json) =>
      _$MainObjectModelFromJson(json);
}
