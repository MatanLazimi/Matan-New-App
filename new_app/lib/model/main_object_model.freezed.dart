// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainObjectModel _$MainObjectModelFromJson(Map<String, dynamic> json) {
  return _MainObjectModel.fromJson(json);
}

/// @nodoc
mixin _$MainObjectModel {
  int? get sponsorBrokerManageOid => throw _privateConstructorUsedError;
  List<BrokerManageModel>? get brokerManageArray =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainObjectModelCopyWith<MainObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainObjectModelCopyWith<$Res> {
  factory $MainObjectModelCopyWith(
          MainObjectModel value, $Res Function(MainObjectModel) then) =
      _$MainObjectModelCopyWithImpl<$Res, MainObjectModel>;
  @useResult
  $Res call(
      {int? sponsorBrokerManageOid,
      List<BrokerManageModel>? brokerManageArray});
}

/// @nodoc
class _$MainObjectModelCopyWithImpl<$Res, $Val extends MainObjectModel>
    implements $MainObjectModelCopyWith<$Res> {
  _$MainObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorBrokerManageOid = freezed,
    Object? brokerManageArray = freezed,
  }) {
    return _then(_value.copyWith(
      sponsorBrokerManageOid: freezed == sponsorBrokerManageOid
          ? _value.sponsorBrokerManageOid
          : sponsorBrokerManageOid // ignore: cast_nullable_to_non_nullable
              as int?,
      brokerManageArray: freezed == brokerManageArray
          ? _value.brokerManageArray
          : brokerManageArray // ignore: cast_nullable_to_non_nullable
              as List<BrokerManageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainObjectModelCopyWith<$Res>
    implements $MainObjectModelCopyWith<$Res> {
  factory _$$_MainObjectModelCopyWith(
          _$_MainObjectModel value, $Res Function(_$_MainObjectModel) then) =
      __$$_MainObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? sponsorBrokerManageOid,
      List<BrokerManageModel>? brokerManageArray});
}

/// @nodoc
class __$$_MainObjectModelCopyWithImpl<$Res>
    extends _$MainObjectModelCopyWithImpl<$Res, _$_MainObjectModel>
    implements _$$_MainObjectModelCopyWith<$Res> {
  __$$_MainObjectModelCopyWithImpl(
      _$_MainObjectModel _value, $Res Function(_$_MainObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorBrokerManageOid = freezed,
    Object? brokerManageArray = freezed,
  }) {
    return _then(_$_MainObjectModel(
      sponsorBrokerManageOid: freezed == sponsorBrokerManageOid
          ? _value.sponsorBrokerManageOid
          : sponsorBrokerManageOid // ignore: cast_nullable_to_non_nullable
              as int?,
      brokerManageArray: freezed == brokerManageArray
          ? _value._brokerManageArray
          : brokerManageArray // ignore: cast_nullable_to_non_nullable
              as List<BrokerManageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainObjectModel extends _MainObjectModel {
  const _$_MainObjectModel(
      {this.sponsorBrokerManageOid,
      final List<BrokerManageModel>? brokerManageArray})
      : _brokerManageArray = brokerManageArray,
        super._();

  factory _$_MainObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainObjectModelFromJson(json);

  @override
  final int? sponsorBrokerManageOid;
  final List<BrokerManageModel>? _brokerManageArray;
  @override
  List<BrokerManageModel>? get brokerManageArray {
    final value = _brokerManageArray;
    if (value == null) return null;
    if (_brokerManageArray is EqualUnmodifiableListView)
      return _brokerManageArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MainObjectModel(sponsorBrokerManageOid: $sponsorBrokerManageOid, brokerManageArray: $brokerManageArray)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainObjectModel &&
            (identical(other.sponsorBrokerManageOid, sponsorBrokerManageOid) ||
                other.sponsorBrokerManageOid == sponsorBrokerManageOid) &&
            const DeepCollectionEquality()
                .equals(other._brokerManageArray, _brokerManageArray));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sponsorBrokerManageOid,
      const DeepCollectionEquality().hash(_brokerManageArray));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainObjectModelCopyWith<_$_MainObjectModel> get copyWith =>
      __$$_MainObjectModelCopyWithImpl<_$_MainObjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainObjectModelToJson(
      this,
    );
  }
}

abstract class _MainObjectModel extends MainObjectModel {
  const factory _MainObjectModel(
      {final int? sponsorBrokerManageOid,
      final List<BrokerManageModel>? brokerManageArray}) = _$_MainObjectModel;
  const _MainObjectModel._() : super._();

  factory _MainObjectModel.fromJson(Map<String, dynamic> json) =
      _$_MainObjectModel.fromJson;

  @override
  int? get sponsorBrokerManageOid;
  @override
  List<BrokerManageModel>? get brokerManageArray;
  @override
  @JsonKey(ignore: true)
  _$$_MainObjectModelCopyWith<_$_MainObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
