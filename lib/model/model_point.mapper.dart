// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_point.dart';

class ModelPointMapper extends ClassMapperBase<ModelPoint> {
  ModelPointMapper._();

  static ModelPointMapper? _instance;
  static ModelPointMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelPointMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ModelPoint';

  static double _$x(ModelPoint v) => v.x;
  static const Field<ModelPoint, double> _f$x = Field('x', _$x);
  static double _$y(ModelPoint v) => v.y;
  static const Field<ModelPoint, double> _f$y = Field('y', _$y);

  @override
  final MappableFields<ModelPoint> fields = const {
    #x: _f$x,
    #y: _f$y,
  };

  static ModelPoint _instantiate(DecodingData data) {
    return ModelPoint(x: data.dec(_f$x), y: data.dec(_f$y));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelPoint fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelPoint>(map);
  }

  static ModelPoint fromJson(String json) {
    return ensureInitialized().decodeJson<ModelPoint>(json);
  }
}

mixin ModelPointMappable {
  String toJson() {
    return ModelPointMapper.ensureInitialized()
        .encodeJson<ModelPoint>(this as ModelPoint);
  }

  Map<String, dynamic> toMap() {
    return ModelPointMapper.ensureInitialized()
        .encodeMap<ModelPoint>(this as ModelPoint);
  }

  ModelPointCopyWith<ModelPoint, ModelPoint, ModelPoint> get copyWith =>
      _ModelPointCopyWithImpl(this as ModelPoint, $identity, $identity);
  @override
  String toString() {
    return ModelPointMapper.ensureInitialized()
        .stringifyValue(this as ModelPoint);
  }

  @override
  bool operator ==(Object other) {
    return ModelPointMapper.ensureInitialized()
        .equalsValue(this as ModelPoint, other);
  }

  @override
  int get hashCode {
    return ModelPointMapper.ensureInitialized().hashValue(this as ModelPoint);
  }
}

extension ModelPointValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelPoint, $Out> {
  ModelPointCopyWith<$R, ModelPoint, $Out> get $asModelPoint =>
      $base.as((v, t, t2) => _ModelPointCopyWithImpl(v, t, t2));
}

abstract class ModelPointCopyWith<$R, $In extends ModelPoint, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? x, double? y});
  ModelPointCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelPointCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelPoint, $Out>
    implements ModelPointCopyWith<$R, ModelPoint, $Out> {
  _ModelPointCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelPoint> $mapper =
      ModelPointMapper.ensureInitialized();
  @override
  $R call({double? x, double? y}) =>
      $apply(FieldCopyWithData({if (x != null) #x: x, if (y != null) #y: y}));
  @override
  ModelPoint $make(CopyWithData data) =>
      ModelPoint(x: data.get(#x, or: $value.x), y: data.get(#y, or: $value.y));

  @override
  ModelPointCopyWith<$R2, ModelPoint, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelPointCopyWithImpl($value, $cast, t);
}
