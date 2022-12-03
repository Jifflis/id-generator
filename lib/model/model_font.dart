import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//ignore_for_file:invalid_annotation_target

part 'model_font.g.dart';
part 'model_font.freezed.dart';

@freezed
class ModelFont with _$ModelFont {
  factory ModelFont({
    required String fontName,
    required double fontSize,
    @Default(Alignment.left) Alignment alignment,
  }) = _ModelFont;

  factory ModelFont.fromJson(Map<String, dynamic> map) => _$ModelFontFromJson(map);
}

enum Alignment {
  @JsonKey(name: 'center')
  center,
  @JsonKey(name: 'right')
  right,
  @JsonKey(name: 'left')
  left
}
