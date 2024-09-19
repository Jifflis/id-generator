import 'package:dart_mappable/dart_mappable.dart';
import 'package:id_generator/model/model_font.dart';
import 'package:id_generator/model/model_item.dart';

part 'model_text.mapper.dart';

@MappableClass()
class ModelText with ModelTextMappable {
  const ModelText({
    required this.id,
    required this.item,
    required this.font,
    required this.text,
    this.maxWidth,
    this.textPosition = TextPosition.horizontal,
  });

  final String id;
  final ModelItem item;
  final ModelFont font;
  final String text;
  final double? maxWidth;
  final TextPosition textPosition;

  static const fromJson = ModelTextMapper.fromJson;
}

@MappableEnum()
enum TextPosition { vertical, horizontal }
