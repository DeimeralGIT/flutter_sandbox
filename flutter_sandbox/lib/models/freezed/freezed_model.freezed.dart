// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreezedModel _$FreezedModelFromJson(Map<String, dynamic> json) {
  return _FreezedModel.fromJson(json);
}

/// @nodoc
mixin _$FreezedModel {
  String get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedModelCopyWith<FreezedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedModelCopyWith<$Res> {
  factory $FreezedModelCopyWith(
          FreezedModel value, $Res Function(FreezedModel) then) =
      _$FreezedModelCopyWithImpl<$Res, FreezedModel>;
  @useResult
  $Res call({String id, int quantity});
}

/// @nodoc
class _$FreezedModelCopyWithImpl<$Res, $Val extends FreezedModel>
    implements $FreezedModelCopyWith<$Res> {
  _$FreezedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedModelImplCopyWith<$Res>
    implements $FreezedModelCopyWith<$Res> {
  factory _$$FreezedModelImplCopyWith(
          _$FreezedModelImpl value, $Res Function(_$FreezedModelImpl) then) =
      __$$FreezedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int quantity});
}

/// @nodoc
class __$$FreezedModelImplCopyWithImpl<$Res>
    extends _$FreezedModelCopyWithImpl<$Res, _$FreezedModelImpl>
    implements _$$FreezedModelImplCopyWith<$Res> {
  __$$FreezedModelImplCopyWithImpl(
      _$FreezedModelImpl _value, $Res Function(_$FreezedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$FreezedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedModelImpl implements _FreezedModel {
  const _$FreezedModelImpl({required this.id, required this.quantity});

  factory _$FreezedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedModelImplFromJson(json);

  @override
  final String id;
  @override
  final int quantity;

  @override
  String toString() {
    return 'FreezedModel(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedModelImplCopyWith<_$FreezedModelImpl> get copyWith =>
      __$$FreezedModelImplCopyWithImpl<_$FreezedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedModelImplToJson(
      this,
    );
  }
}

abstract class _FreezedModel implements FreezedModel {
  const factory _FreezedModel(
      {required final String id,
      required final int quantity}) = _$FreezedModelImpl;

  factory _FreezedModel.fromJson(Map<String, dynamic> json) =
      _$FreezedModelImpl.fromJson;

  @override
  String get id;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$FreezedModelImplCopyWith<_$FreezedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
