// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pickup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pickup _$PickupFromJson(Map<String, dynamic> json) {
  return _Pickup.fromJson(json);
}

/// @nodoc
class _$PickupTearOff {
  const _$PickupTearOff();

  _Pickup call(
      {Sender? sender,
      DateTime? pickupDateTime,
      String? packageDetails,
      Receiver? receiver}) {
    return _Pickup(
      sender: sender,
      pickupDateTime: pickupDateTime,
      packageDetails: packageDetails,
      receiver: receiver,
    );
  }

  Pickup fromJson(Map<String, Object?> json) {
    return Pickup.fromJson(json);
  }
}

/// @nodoc
const $Pickup = _$PickupTearOff();

/// @nodoc
mixin _$Pickup {
  Sender? get sender => throw _privateConstructorUsedError;
  DateTime? get pickupDateTime => throw _privateConstructorUsedError;
  String? get packageDetails => throw _privateConstructorUsedError;
  Receiver? get receiver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupCopyWith<Pickup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupCopyWith<$Res> {
  factory $PickupCopyWith(Pickup value, $Res Function(Pickup) then) =
      _$PickupCopyWithImpl<$Res>;
  $Res call(
      {Sender? sender,
      DateTime? pickupDateTime,
      String? packageDetails,
      Receiver? receiver});

  $SenderCopyWith<$Res>? get sender;
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$PickupCopyWithImpl<$Res> implements $PickupCopyWith<$Res> {
  _$PickupCopyWithImpl(this._value, this._then);

  final Pickup _value;
  // ignore: unused_field
  final $Res Function(Pickup) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? pickupDateTime = freezed,
    Object? packageDetails = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender?,
      pickupDateTime: pickupDateTime == freezed
          ? _value.pickupDateTime
          : pickupDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      packageDetails: packageDetails == freezed
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver?,
    ));
  }

  @override
  $SenderCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $ReceiverCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $ReceiverCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$PickupCopyWith<$Res> implements $PickupCopyWith<$Res> {
  factory _$PickupCopyWith(_Pickup value, $Res Function(_Pickup) then) =
      __$PickupCopyWithImpl<$Res>;
  @override
  $Res call(
      {Sender? sender,
      DateTime? pickupDateTime,
      String? packageDetails,
      Receiver? receiver});

  @override
  $SenderCopyWith<$Res>? get sender;
  @override
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$PickupCopyWithImpl<$Res> extends _$PickupCopyWithImpl<$Res>
    implements _$PickupCopyWith<$Res> {
  __$PickupCopyWithImpl(_Pickup _value, $Res Function(_Pickup) _then)
      : super(_value, (v) => _then(v as _Pickup));

  @override
  _Pickup get _value => super._value as _Pickup;

  @override
  $Res call({
    Object? sender = freezed,
    Object? pickupDateTime = freezed,
    Object? packageDetails = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_Pickup(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender?,
      pickupDateTime: pickupDateTime == freezed
          ? _value.pickupDateTime
          : pickupDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      packageDetails: packageDetails == freezed
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Pickup extends _Pickup {
  _$_Pickup(
      {this.sender, this.pickupDateTime, this.packageDetails, this.receiver})
      : super._();

  factory _$_Pickup.fromJson(Map<String, dynamic> json) =>
      _$$_PickupFromJson(json);

  @override
  final Sender? sender;
  @override
  final DateTime? pickupDateTime;
  @override
  final String? packageDetails;
  @override
  final Receiver? receiver;

  @override
  String toString() {
    return 'Pickup(sender: $sender, pickupDateTime: $pickupDateTime, packageDetails: $packageDetails, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pickup &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality()
                .equals(other.pickupDateTime, pickupDateTime) &&
            const DeepCollectionEquality()
                .equals(other.packageDetails, packageDetails) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(pickupDateTime),
      const DeepCollectionEquality().hash(packageDetails),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$PickupCopyWith<_Pickup> get copyWith =>
      __$PickupCopyWithImpl<_Pickup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupToJson(this);
  }
}

abstract class _Pickup extends Pickup {
  factory _Pickup(
      {Sender? sender,
      DateTime? pickupDateTime,
      String? packageDetails,
      Receiver? receiver}) = _$_Pickup;
  _Pickup._() : super._();

  factory _Pickup.fromJson(Map<String, dynamic> json) = _$_Pickup.fromJson;

  @override
  Sender? get sender;
  @override
  DateTime? get pickupDateTime;
  @override
  String? get packageDetails;
  @override
  Receiver? get receiver;
  @override
  @JsonKey(ignore: true)
  _$PickupCopyWith<_Pickup> get copyWith => throw _privateConstructorUsedError;
}
