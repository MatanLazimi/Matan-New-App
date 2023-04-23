// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainObjectModel _$$_MainObjectModelFromJson(Map<String, dynamic> json) =>
    _$_MainObjectModel(
      sponsorBrokerManageOid: json['sponsorBrokerManageOid'] as int?,
      brokerManageArray: (json['brokerManageArray'] as List<dynamic>?)
          ?.map((e) => BrokerManageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainObjectModelToJson(_$_MainObjectModel instance) =>
    <String, dynamic>{
      'sponsorBrokerManageOid': instance.sponsorBrokerManageOid,
      'brokerManageArray': instance.brokerManageArray,
    };
