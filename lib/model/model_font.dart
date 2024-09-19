import 'package:dart_mappable/dart_mappable.dart';
//ignore_for_file:invalid_annotation_target

part 'model_font.mapper.dart';

@MappableClass()
class ModelFont with  ModelFontMappable {
  const ModelFont({
    required this.fontName,
    required this.fontSize,
   this.alignment = Alignment.left,
  });

  final String fontName;
  final double fontSize;
  final Alignment alignment;

  static const fromJson = ModelFontMapper.fromJson;
}

@MappableEnum()
enum Alignment {
  center,
  right,
  left
}
