import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:id_generator/model/model_font.dart';
import 'package:id_generator/model/model_item.dart';

part 'model_text.freezed.dart';

part 'model_text.g.dart';

@freezed
class ModelText with _$ModelText {
  factory ModelText({
    required String id,
    required ModelItem item,
    required ModelFont font,
    required String text,
    double? maxWidth,
    @Default(TextPosition.horizontal) TextPosition textPosition,
  }) = _ModelText;

  factory ModelText.fromJson(Map<String, dynamic> map) => _$ModelTextFromJson(map);
}

enum TextPosition {
  @JsonValue('vertical')
  vertical,
  @JsonValue('horizontal')
  horizontal
}
