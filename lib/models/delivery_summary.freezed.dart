// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliverySummary _$DeliverySummaryFromJson(Map<String, dynamic> json) {
  return _DeliverySummary.fromJson(json);
}

/// @nodoc
class _$DeliverySummaryTearOff {
  const _$DeliverySummaryTearOff();

  _DeliverySummary call(
      {required String no,
      required int id,
      required String from,
      required String to,
      required String eta,
      required String type}) {
    return _DeliverySummary(
      no: no,
      id: id,
      from: from,
      to: to,
      eta: eta,
      type: type,
    );
  }

  DeliverySummary fromJson(Map<String, Object?> json) {
    return DeliverySummary.fromJson(json);
  }
}

/// @nodoc
const $DeliverySummary = _$DeliverySummaryTearOff();

/// @nodoc
mixin _$DeliverySummary {
  String get no => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get eta => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliverySummaryCopyWith<DeliverySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverySummaryCopyWith<$Res> {
  factory $DeliverySummaryCopyWith(
          DeliverySummary value, $Res Function(DeliverySummary) then) =
      _$DeliverySummaryCopyWithImpl<$Res>;
  $Res call(
      {String no, int id, String from, String to, String eta, String type});
}

/// @nodoc
class _$DeliverySummaryCopyWithImpl<$Res>
    implements $DeliverySummaryCopyWith<$Res> {
  _$DeliverySummaryCopyWithImpl(this._value, this._then);

  final DeliverySummary _value;
  // ignore: unused_field
  final $Res Function(DeliverySummary) _then;

  @override
  $Res call({
    Object? no = freezed,
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? eta = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$DeliverySummaryCopyWith<$Res>
    implements $DeliverySummaryCopyWith<$Res> {
  factory _$DeliverySummaryCopyWith(
          _DeliverySummary value, $Res Function(_DeliverySummary) then) =
      __$DeliverySummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String no, int id, String from, String to, String eta, String type});
}

/// @nodoc
class __$DeliverySummaryCopyWithImpl<$Res>
    extends _$DeliverySummaryCopyWithImpl<$Res>
    implements _$DeliverySummaryCopyWith<$Res> {
  __$DeliverySummaryCopyWithImpl(
      _DeliverySummary _value, $Res Function(_DeliverySummary) _then)
      : super(_value, (v) => _then(v as _DeliverySummary));

  @override
  _DeliverySummary get _value => super._value as _DeliverySummary;

  @override
  $Res call({
    Object? no = freezed,
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? eta = freezed,
    Object? type = freezed,
  }) {
    return _then(_DeliverySummary(
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_DeliverySummary extends _DeliverySummary {
  _$_DeliverySummary(
      {required this.no,
      required this.id,
      required this.from,
      required this.to,
      required this.eta,
      required this.type})
      : super._();

  factory _$_DeliverySummary.fromJson(Map<String, dynamic> json) =>
      _$$_DeliverySummaryFromJson(json);

  @override
  final String no;
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
    return 'DeliverySummary(no: $no, id: $id, from: $from, to: $to, eta: $eta, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliverySummary &&
            const DeepCollectionEquality().equals(other.no, no) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.eta, eta) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(no),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(eta),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$DeliverySummaryCopyWith<_DeliverySummary> get copyWith =>
      __$DeliverySummaryCopyWithImpl<_DeliverySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliverySummaryToJson(this);
  }
}

abstract class _DeliverySummary extends DeliverySummary {
  factory _DeliverySummary(
      {required String no,
      required int id,
      required String from,
      required String to,
      required String eta,
      required String type}) = _$_DeliverySummary;
  _DeliverySummary._() : super._();

  factory _DeliverySummary.fromJson(Map<String, dynamic> json) =
      _$_DeliverySummary.fromJson;

  @override
  String get no;
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
  _$DeliverySummaryCopyWith<_DeliverySummary> get copyWith =>
      throw _privateConstructorUsedError;
}
