import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_image.dart';
import 'model_text.dart';
part 'model_id.g.dart';
part 'model_id.freezed.dart';

@freezed
class ModelId with _$ModelId {
  factory ModelId({
    required String id,
    required String title,
    String? backgroundPath,
    @Default([]) List<ModelImage> images,
    @Default([]) List<ModelText> texts,
  }) = _ModelId;

  factory ModelId.fromJson(Map<String, dynamic> map) => _$ModelIdFromJson(map);
}
