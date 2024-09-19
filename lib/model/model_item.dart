import 'package:dart_mappable/dart_mappable.dart';
import 'package:id_generator/model/model_point.dart';

part 'model_item.mapper.dart';

@MappableClass()
class ModelItem with ModelItemMappable {
  const ModelItem({
    this.label = '',
    required this.point,
  }) ;

  final String label;
  final ModelPoint point;

  static const fromJson = ModelItemMapper.fromJson;
}
