import 'package:dart_mappable/dart_mappable.dart';

part 'model_size.mapper.dart';

@MappableClass()
class ModelSize with ModelSizeMappable {
  const ModelSize({
    required this. width,
    required this. height,
  });
  final double width;
  final double height;

  static const fromJson = ModelSizeMapper.fromJson;
}
