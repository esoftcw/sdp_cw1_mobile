// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
class _$DeliveryTearOff {
  const _$DeliveryTearOff();

  _Delivery call(
      {String? track_no,
      required int id,
      required String from,
      required String to,
      required String eta,
      required String type}) {
    return _Delivery(
      track_no: track_no,
      id: id,
      from: from,
      to: to,
      eta: eta,
      type: type,
    );
  }

  Delivery fromJson(Map<String, Object?> json) {
    return Delivery.fromJson(json);
  }
}

/// @nodoc
const $Delivery = _$DeliveryTearOff();

/// @nodoc
mixin _$Delivery {
  String? get track_no => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get eta => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res>;
  $Res call(
      {String? track_no,
      int id,
      String from,
      String to,
      String eta,
      String type});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res> implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  final Delivery _value;
  // ignore: unused_field
  final $Res Function(Delivery) _then;

  @override
  $Res call({
    Object? track_no = freezed,
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? eta = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      track_no: track_no == freezed
          ? _value.track_no
          : track_no // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$DeliveryCopyWith(_Delivery value, $Res Function(_Delivery) then) =
      __$DeliveryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? track_no,
      int id,
      String from,
      String to,
      String eta,
      String type});
}

/// @nodoc
class __$DeliveryCopyWithImpl<$Res> extends _$DeliveryCopyWithImpl<$Res>
    implements _$DeliveryCopyWith<$Res> {
  __$DeliveryCopyWithImpl(_Delivery _value, $Res Function(_Delivery) _then)
      : super(_value, (v) => _then(v as _Delivery));

  @override
  _Delivery get _value => super._value as _Delivery;

  @override
  $Res call({
    Object? track_no = freezed,
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? eta = freezed,
    Object? type = freezed,
  }) {
    return _then(_Delivery(
      track_no: track_no == freezed
          ? _value.track_no
          : track_no // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Delivery extends _Delivery {
  _$_Delivery(
      {this.track_no,
      required this.id,
      required this.from,
      required this.to,
      required this.eta,
      required this.type})
      : super._();

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFromJson(json);

  @override
  final String? track_no;
  @override
  final int id;
  @override
  final String from;
  @override
  final String to;
  @override
  final String eta;
  @override
  final String type;

  @override
  String toString() {
    return 'Delivery(track_no: $track_no, id: $id, from: $from, to: $to, eta: $eta, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Delivery &&
            const DeepCollectionEquality().equals(other.track_no, track_no) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.eta, eta) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(track_no),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(eta),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      __$DeliveryCopyWithImpl<_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryToJson(this);
  }
}

abstract class _Delivery extends Delivery {
  factory _Delivery(
      {String? track_no,
      required int id,
      required String from,
      required String to,
      required String eta,
      required String type}) = _$_Delivery;
  _Delivery._() : super._();

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  String? get track_no;
  @override
  int get id;
  @override
  String get from;
  @override
  String get to;
  @override
  String get eta;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}
