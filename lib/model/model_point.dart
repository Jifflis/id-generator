import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_point.freezed.dart';
part 'model_point.g.dart';

@freezed
class ModelPoint with _$ModelPoint {
  factory ModelPoint({required double x, required double y}) = _ModelPoint;

  factory ModelPoint.fromJson(Map<String, dynamic> map) => _$ModelPointFromJson(map);
}
