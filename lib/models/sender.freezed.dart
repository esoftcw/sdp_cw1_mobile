// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sender _$SenderFromJson(Map<String, dynamic> json) {
  return _Sender.fromJson(json);
}

/// @nodoc
class _$SenderTearOff {
  const _$SenderTearOff();

  _Sender call(
      {required String firstName,
      required String lastName,
      required String address,
      String? cityName,
      required String cityId,
      required String contactNumber,
      String? altContactNumber,
      String? email}) {
    return _Sender(
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

  Sender fromJson(Map<String, Object?> json) {
    return Sender.fromJson(json);
  }
}

/// @nodoc
const $Sender = _$SenderTearOff();

/// @nodoc
mixin _$Sender {
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
  $SenderCopyWith<Sender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderCopyWith<$Res> {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) then) =
      _$SenderCopyWithImpl<$Res>;
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
class _$SenderCopyWithImpl<$Res> implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._value, this._then);

  final Sender _value;
  // ignore: unused_field
  final $Res Function(Sender) _then;

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
abstract class _$SenderCopyWith<$Res> implements $SenderCopyWith<$Res> {
  factory _$SenderCopyWith(_Sender value, $Res Function(_Sender) then) =
      __$SenderCopyWithImpl<$Res>;
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
class __$SenderCopyWithImpl<$Res> extends _$SenderCopyWithImpl<$Res>
    implements _$SenderCopyWith<$Res> {
  __$SenderCopyWithImpl(_Sender _value, $Res Function(_Sender) _then)
      : super(_value, (v) => _then(v as _Sender));

  @override
  _Sender get _value => super._value as _Sender;

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
    return _then(_Sender(
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
class _$_Sender extends _Sender {
  _$_Sender(
      {required this.firstName,
      required this.lastName,
      required this.address,
      this.cityName,
      required this.cityId,
      required this.contactNumber,
      this.altContactNumber,
      this.email})
      : super._();

  factory _$_Sender.fromJson(Map<String, dynamic> json) =>
      _$$_SenderFromJson(json);

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
    return 'Sender(firstName: $firstName, lastName: $lastName, address: $address, cityName: $cityName, cityId: $cityId, contactNumber: $contactNumber, altContactNumber: $altContactNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sender &&
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
  _$SenderCopyWith<_Sender> get copyWith =>
      __$SenderCopyWithImpl<_Sender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderToJson(this);
  }
}

abstract class _Sender extends Sender {
  factory _Sender(
      {required String firstName,
      required String lastName,
      required String address,
      String? cityName,
      required String cityId,
      required String contactNumber,
      String? altContactNumber,
      String? email}) = _$_Sender;
  _Sender._() : super._();

  factory _Sender.fromJson(Map<String, dynamic> json) = _$_Sender.fromJson;

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
  _$SenderCopyWith<_Sender> get copyWith => throw _privateConstructorUsedError;
}
