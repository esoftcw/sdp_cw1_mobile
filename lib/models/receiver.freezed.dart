// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Receiver _$ReceiverFromJson(Map<String, dynamic> json) {
  return _Receiver.fromJson(json);
}

/// @nodoc
class _$ReceiverTearOff {
  const _$ReceiverTearOff();

  _Receiver call(
      {required String firstName,
      required String lastName,
      required String address,
      String? cityName,
      required String cityId,
      required String contactNumber,
      String? altContactNumber,
      String? email}) {
    return _Receiver(
      firstName: firstName,
      lastName: lastName,
      address: address,
      cityName: cityName,
      cityId: cityId,
      contactNumber: contactNumber,
      altContactNumber: altContactNumber,
      email: email,
    );
  }

  Receiver fromJson(Map<String, Object?> json) {
    return Receiver.fromJson(json);
  }
}

/// @nodoc
const $Receiver = _$ReceiverTearOff();

/// @nodoc
mixin _$Receiver {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  String? get altContactNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiverCopyWith<Receiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverCopyWith<$Res> {
  factory $ReceiverCopyWith(Receiver value, $Res Function(Receiver) then) =
      _$ReceiverCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String address,
      String? cityName,
      String cityId,
      String contactNumber,
      String? altContactNumber,
      String? email});
}

/// @nodoc
class _$ReceiverCopyWithImpl<$Res> implements $ReceiverCopyWith<$Res> {
  _$ReceiverCopyWithImpl(this._value, this._then);

  final Receiver _value;
  // ignore: unused_field
  final $Res Function(Receiver) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
    Object? cityName = freezed,
    Object? cityId = freezed,
    Object? contactNumber = freezed,
    Object? altContactNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      altContactNumber: altContactNumber == freezed
          ? _value.altContactNumber
          : altContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReceiverCopyWith<$Res> implements $ReceiverCopyWith<$Res> {
  factory _$ReceiverCopyWith(_Receiver value, $Res Function(_Receiver) then) =
      __$ReceiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String address,
      String? cityName,
      String cityId,
      String contactNumber,
      String? altContactNumber,
      String? email});
}

/// @nodoc
class __$ReceiverCopyWithImpl<$Res> extends _$ReceiverCopyWithImpl<$Res>
    implements _$ReceiverCopyWith<$Res> {
  __$ReceiverCopyWithImpl(_Receiver _value, $Res Function(_Receiver) _then)
      : super(_value, (v) => _then(v as _Receiver));

  @override
  _Receiver get _value => super._value as _Receiver;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
    Object? cityName = freezed,
    Object? cityId = freezed,
    Object? contactNumber = freezed,
    Object? altContactNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_Receiver(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      altContactNumber: altContactNumber == freezed
          ? _value.altContactNumber
          : altContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Receiver extends _Receiver {
  _$_Receiver(
      {required this.firstName,
      required this.lastName,
      required this.address,
      this.cityName,
      required this.cityId,
      required this.contactNumber,
      this.altContactNumber,
      this.email})
      : super._();

  factory _$_Receiver.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiverFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String address;
  @override
  final String? cityName;
  @override
  final String cityId;
  @override
  final String contactNumber;
  @override
  final String? altContactNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'Receiver(firstName: $firstName, lastName: $lastName, address: $address, cityName: $cityName, cityId: $cityId, contactNumber: $contactNumber, altContactNumber: $altContactNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Receiver &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality()
                .equals(other.contactNumber, contactNumber) &&
            const DeepCollectionEquality()
                .equals(other.altContactNumber, altContactNumber) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(contactNumber),
      const DeepCollectionEquality().hash(altContactNumber),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ReceiverCopyWith<_Receiver> get copyWith =>
      __$ReceiverCopyWithImpl<_Receiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiverToJson(this);
  }
}

abstract class _Receiver extends Receiver {
  factory _Receiver(
      {required String firstName,
      required String lastName,
      required String address,
      String? cityName,
      required String cityId,
      required String contactNumber,
      String? altContactNumber,
      String? email}) = _$_Receiver;
  _Receiver._() : super._();

  factory _Receiver.fromJson(Map<String, dynamic> json) = _$_Receiver.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get address;
  @override
  String? get cityName;
  @override
  String get cityId;
  @override
  String get contactNumber;
  @override
  String? get altContactNumber;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$ReceiverCopyWith<_Receiver> get copyWith =>
      throw _privateConstructorUsedError;
}
