import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_size.g.dart';
part 'model_size.freezed.dart';

@freezed
class ModelSize with _$ModelSize {
  factory ModelSize({
    required double width,
    required double height,
  }) = _ModelSize;

  factory ModelSize.fromJson(Map<String, dynamic> json) => _$ModelSizeFromJson(json);
}
