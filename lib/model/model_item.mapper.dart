// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_item.dart';

class ModelItemMapper extends ClassMapperBase<ModelItem> {
  ModelItemMapper._();

  static ModelItemMapper? _instance;
  static ModelItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelItemMapper._());
      ModelPointMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelItem';

  static String _$label(ModelItem v) => v.label;
  static const Field<ModelItem, String> _f$label =
      Field('label', _$label, opt: true, def: '');
  static ModelPoint _$point(ModelItem v) => v.point;
  static const Field<ModelItem, ModelPoint> _f$point = Field('point', _$point);

  @override
  final MappableFields<ModelItem> fields = const {
    #label: _f$label,
    #point: _f$point,
  };

  static ModelItem _instantiate(DecodingData data) {
    return ModelItem(label: data.dec(_f$label), point: data.dec(_f$point));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelItem>(map);
  }

  static ModelItem fromJson(String json) {
    return ensureInitialized().decodeJson<ModelItem>(json);
  }
}

mixin ModelItemMappable {
  String toJson() {
    return ModelItemMapper.ensureInitialized()
        .encodeJson<ModelItem>(this as ModelItem);
  }

  Map<String, dynamic> toMap() {
    return ModelItemMapper.ensureInitialized()
        .encodeMap<ModelItem>(this as ModelItem);
  }

  ModelItemCopyWith<ModelItem, ModelItem, ModelItem> get copyWith =>
      _ModelItemCopyWithImpl(this as ModelItem, $identity, $identity);
  @override
  String toString() {
    return ModelItemMapper.ensureInitialized()
        .stringifyValue(this as ModelItem);
  }

  @override
  bool operator ==(Object other) {
    return ModelItemMapper.ensureInitialized()
        .equalsValue(this as ModelItem, other);
  }

  @override
  int get hashCode {
    return ModelItemMapper.ensureInitialized().hashValue(this as ModelItem);
  }
}

extension ModelItemValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelItem, $Out> {
  ModelItemCopyWith<$R, ModelItem, $Out> get $asModelItem =>
      $base.as((v, t, t2) => _ModelItemCopyWithImpl(v, t, t2));
}

abstract class ModelItemCopyWith<$R, $In extends ModelItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ModelPointCopyWith<$R, ModelPoint, ModelPoint> get point;
  $R call({String? label, ModelPoint? point});
  ModelItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelItem, $Out>
    implements ModelItemCopyWith<$R, ModelItem, $Out> {
  _ModelItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelItem> $mapper =
      ModelItemMapper.ensureInitialized();
  @override
  ModelPointCopyWith<$R, ModelPoint, ModelPoint> get point =>
      $value.point.copyWith.$chain((v) => call(point: v));
  @override
  $R call({String? label, ModelPoint? point}) => $apply(FieldCopyWithData(
      {if (label != null) #label: label, if (point != null) #point: point}));
  @override
  ModelItem $make(CopyWithData data) => ModelItem(
      label: data.get(#label, or: $value.label),
      point: data.get(#point, or: $value.point));

  @override
  ModelItemCopyWith<$R2, ModelItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelItemCopyWithImpl($value, $cast, t);
}
