// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_image.dart';

class ShapeMapper extends EnumMapper<Shape> {
  ShapeMapper._();

  static ShapeMapper? _instance;
  static ShapeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShapeMapper._());
    }
    return _instance!;
  }

  static Shape fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Shape decode(dynamic value) {
    switch (value) {
      case 'circle':
        return Shape.circle;
      case 'square':
        return Shape.square;
      case 'rectangle':
        return Shape.rectangle;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Shape self) {
    switch (self) {
      case Shape.circle:
        return 'circle';
      case Shape.square:
        return 'square';
      case Shape.rectangle:
        return 'rectangle';
    }
  }
}

extension ShapeMapperExtension on Shape {
  String toValue() {
    ShapeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Shape>(this) as String;
  }
}

class ModelImageMapper extends ClassMapperBase<ModelImage> {
  ModelImageMapper._();

  static ModelImageMapper? _instance;
  static ModelImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelImageMapper._());
      ModelSizeMapper.ensureInitialized();
      ModelItemMapper.ensureInitialized();
      ShapeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelImage';

  static String _$id(ModelImage v) => v.id;
  static const Field<ModelImage, String> _f$id = Field('id', _$id);
  static ModelSize _$size(ModelImage v) => v.size;
  static const Field<ModelImage, ModelSize> _f$size = Field('size', _$size);
  static ModelItem _$item(ModelImage v) => v.item;
  static const Field<ModelImage, ModelItem> _f$item = Field('item', _$item);
  static Shape _$shape(ModelImage v) => v.shape;
  static const Field<ModelImage, Shape> _f$shape =
      Field('shape', _$shape, opt: true, def: Shape.square);

  @override
  final MappableFields<ModelImage> fields = const {
    #id: _f$id,
    #size: _f$size,
    #item: _f$item,
    #shape: _f$shape,
  };

  static ModelImage _instantiate(DecodingData data) {
    return ModelImage(
        id: data.dec(_f$id),
        size: data.dec(_f$size),
        item: data.dec(_f$item),
        shape: data.dec(_f$shape));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelImage>(map);
  }

  static ModelImage fromJson(String json) {
    return ensureInitialized().decodeJson<ModelImage>(json);
  }
}

mixin ModelImageMappable {
  String toJson() {
    return ModelImageMapper.ensureInitialized()
        .encodeJson<ModelImage>(this as ModelImage);
  }

  Map<String, dynamic> toMap() {
    return ModelImageMapper.ensureInitialized()
        .encodeMap<ModelImage>(this as ModelImage);
  }

  ModelImageCopyWith<ModelImage, ModelImage, ModelImage> get copyWith =>
      _ModelImageCopyWithImpl(this as ModelImage, $identity, $identity);
  @override
  String toString() {
    return ModelImageMapper.ensureInitialized()
        .stringifyValue(this as ModelImage);
  }

  @override
  bool operator ==(Object other) {
    return ModelImageMapper.ensureInitialized()
        .equalsValue(this as ModelImage, other);
  }

  @override
  int get hashCode {
    return ModelImageMapper.ensureInitialized().hashValue(this as ModelImage);
  }
}

extension ModelImageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelImage, $Out> {
  ModelImageCopyWith<$R, ModelImage, $Out> get $asModelImage =>
      $base.as((v, t, t2) => _ModelImageCopyWithImpl(v, t, t2));
}

abstract class ModelImageCopyWith<$R, $In extends ModelImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ModelSizeCopyWith<$R, ModelSize, ModelSize> get size;
  ModelItemCopyWith<$R, ModelItem, ModelItem> get item;
  $R call({String? id, ModelSize? size, ModelItem? item, Shape? shape});
  ModelImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelImage, $Out>
    implements ModelImageCopyWith<$R, ModelImage, $Out> {
  _ModelImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelImage> $mapper =
      ModelImageMapper.ensureInitialized();
  @override
  ModelSizeCopyWith<$R, ModelSize, ModelSize> get size =>
      $value.size.copyWith.$chain((v) => call(size: v));
  @override
  ModelItemCopyWith<$R, ModelItem, ModelItem> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({String? id, ModelSize? size, ModelItem? item, Shape? shape}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (size != null) #size: size,
        if (item != null) #item: item,
        if (shape != null) #shape: shape
      }));
  @override
  ModelImage $make(CopyWithData data) => ModelImage(
      id: data.get(#id, or: $value.id),
      size: data.get(#size, or: $value.size),
      item: data.get(#item, or: $value.item),
      shape: data.get(#shape, or: $value.shape));

  @override
  ModelImageCopyWith<$R2, ModelImage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelImageCopyWithImpl($value, $cast, t);
}
