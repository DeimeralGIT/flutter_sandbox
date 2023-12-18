import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_model.freezed.dart';
part 'freezed_model.g.dart';

@freezed
class FreezedModel with _$FreezedModel {
  const factory FreezedModel({
    required String id,
    required int quantity,
  }) = _FreezedModel;

  factory FreezedModel.fromJson(Map<String, Object?> json) =>
      _$FreezedModelFromJson(json);
}
