import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:id_generator/features/id_painter/model/shape.dart';
import 'package:id_generator/model/model_item.dart';

import 'model_size.dart';

part 'model_image.g.dart';
part 'model_image.freezed.dart';

//ignore_for_file:invalid_annotation_target
@freezed
class ModelImage with _$ModelImage {
  factory ModelImage({
    required String id,
    required ModelSize size,
    required ModelItem item,
    @Default(Shape.square) Shape shape,
  }) = _ModelImage;

  factory ModelImage.fromJson(Map<String, dynamic> json) => _$ModelImageFromJson(json);
}

enum Shape {
  @JsonValue('circle')
  circle,
  @JsonValue('square')
  square,
  @JsonValue('rectangle')
  rectangle,
}
