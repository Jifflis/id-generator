import 'package:dart_mappable/dart_mappable.dart';

part 'model_point.mapper.dart';

@MappableClass()
class ModelPoint with ModelPointMappable {
  const ModelPoint({
    required this.x,
    required this.y,
  });

  final double x;
  final double y;
  static const fromJson = ModelPointMapper.fromJson;
}
