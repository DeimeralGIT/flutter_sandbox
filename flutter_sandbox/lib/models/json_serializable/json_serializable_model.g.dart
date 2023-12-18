// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serializable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonSerializableModel _$JsonSerializableModelFromJson(
        Map<String, dynamic> json) =>
    JsonSerializableModel(
      id: json['id'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      isWorking: json['isWorking'] as bool,
    );

Map<String, dynamic> _$JsonSerializableModelToJson(
        JsonSerializableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isWorking': instance.isWorking,
      'dueDate': instance.dueDate.toIso8601String(),
    };
