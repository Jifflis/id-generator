import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:id_generator/model/model_point.dart';

part 'model_item.g.dart';
part 'model_item.freezed.dart';

@freezed
class ModelItem with _$ModelItem {
  factory ModelItem({
    @Default('') String label,
    required ModelPoint point,
  }) = _ModelItem;

  factory ModelItem.fromJson(Map<String, dynamic> map) => _$ModelItemFromJson(map);
}
