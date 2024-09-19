import 'package:dart_mappable/dart_mappable.dart';

import 'model_image.dart';
import 'model_text.dart';

part 'model_id.mapper.dart';

@MappableClass()
class ModelId with ModelIdMappable {
  const ModelId({
    required this.id,
    required this.title,
    this.backgroundPath,
    this.images = const [],
    this.texts = const [],
  });

  final String id;
  final String title;
  final String? backgroundPath;
  final List<ModelImage> images;
  final List<ModelText> texts;

  static const fromJson = ModelIdMapper.fromJson;
}
