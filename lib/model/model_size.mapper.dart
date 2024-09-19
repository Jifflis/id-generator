// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_size.dart';

class ModelSizeMapper extends ClassMapperBase<ModelSize> {
  ModelSizeMapper._();

  static ModelSizeMapper? _instance;
  static ModelSizeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelSizeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ModelSize';

  static double _$width(ModelSize v) => v.width;
  static const Field<ModelSize, double> _f$width = Field('width', _$width);
  static double _$height(ModelSize v) => v.height;
  static const Field<ModelSize, double> _f$height = Field('height', _$height);

  @override
  final MappableFields<ModelSize> fields = const {
    #width: _f$width,
    #height: _f$height,
  };

  static ModelSize _instantiate(DecodingData data) {
    return ModelSize(width: data.dec(_f$width), height: data.dec(_f$height));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelSize fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelSize>(map);
  }

  static ModelSize fromJson(String json) {
    return ensureInitialized().decodeJson<ModelSize>(json);
  }
}

mixin ModelSizeMappable {
  String toJson() {
    return ModelSizeMapper.ensureInitialized()
        .encodeJson<ModelSize>(this as ModelSize);
  }

  Map<String, dynamic> toMap() {
    return ModelSizeMapper.ensureInitialized()
        .encodeMap<ModelSize>(this as ModelSize);
  }

  ModelSizeCopyWith<ModelSize, ModelSize, ModelSize> get copyWith =>
      _ModelSizeCopyWithImpl(this as ModelSize, $identity, $identity);
  @override
  String toString() {
    return ModelSizeMapper.ensureInitialized()
        .stringifyValue(this as ModelSize);
  }

  @override
  bool operator ==(Object other) {
    return ModelSizeMapper.ensureInitialized()
        .equalsValue(this as ModelSize, other);
  }

  @override
  int get hashCode {
    return ModelSizeMapper.ensureInitialized().hashValue(this as ModelSize);
  }
}

extension ModelSizeValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelSize, $Out> {
  ModelSizeCopyWith<$R, ModelSize, $Out> get $asModelSize =>
      $base.as((v, t, t2) => _ModelSizeCopyWithImpl(v, t, t2));
}

abstract class ModelSizeCopyWith<$R, $In extends ModelSize, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? width, double? height});
  ModelSizeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelSizeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelSize, $Out>
    implements ModelSizeCopyWith<$R, ModelSize, $Out> {
  _ModelSizeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelSize> $mapper =
      ModelSizeMapper.ensureInitialized();
  @override
  $R call({double? width, double? height}) => $apply(FieldCopyWithData(
      {if (width != null) #width: width, if (height != null) #height: height}));
  @override
  ModelSize $make(CopyWithData data) => ModelSize(
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height));

  @override
  ModelSizeCopyWith<$R2, ModelSize, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelSizeCopyWithImpl($value, $cast, t);
}
