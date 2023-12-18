import 'package:json_annotation/json_annotation.dart';

part 'json_serializable_model.g.dart';

@JsonSerializable()
class JsonSerializableModel {
  final String id;
  final bool isWorking;
  final DateTime dueDate;
  JsonSerializableModel({
    required this.id,
    required this.dueDate,
    required this.isWorking,
  });

  factory JsonSerializableModel.fromJson(data) {
    return _$JsonSerializableModelFromJson(data);
  }

  Map<String, dynamic> toJson() => _$JsonSerializableModelToJson(this);
}
