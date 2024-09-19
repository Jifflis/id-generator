import 'package:dart_mappable/dart_mappable.dart';
import 'package:id_generator/model/model_item.dart';

import 'model_size.dart';


part 'model_image.mapper.dart';

@MappableClass()
class ModelImage with ModelImageMappable {
  const ModelImage({
    required this.id,
    required this.size,
    required this.item,
    this.shape = Shape.square,
  });

  final String id;
  final ModelSize size;
  final ModelItem item;
  final Shape shape;
  static const fromJson = ModelImageMapper.fromJson;
}

@MappableEnum()
enum Shape {
  circle,
  square,
  rectangle,
}
