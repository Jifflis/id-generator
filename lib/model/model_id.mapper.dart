// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_id.dart';

class ModelIdMapper extends ClassMapperBase<ModelId> {
  ModelIdMapper._();

  static ModelIdMapper? _instance;
  static ModelIdMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelIdMapper._());
      ModelImageMapper.ensureInitialized();
      ModelTextMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelId';

  static String _$id(ModelId v) => v.id;
  static const Field<ModelId, String> _f$id = Field('id', _$id);
  static String _$title(ModelId v) => v.title;
  static const Field<ModelId, String> _f$title = Field('title', _$title);
  static String? _$backgroundPath(ModelId v) => v.backgroundPath;
  static const Field<ModelId, String> _f$backgroundPath =
      Field('backgroundPath', _$backgroundPath, opt: true);
  static List<ModelImage> _$images(ModelId v) => v.images;
  static const Field<ModelId, List<ModelImage>> _f$images =
      Field('images', _$images, opt: true, def: const []);
  static List<ModelText> _$texts(ModelId v) => v.texts;
  static const Field<ModelId, List<ModelText>> _f$texts =
      Field('texts', _$texts, opt: true, def: const []);

  @override
  final MappableFields<ModelId> fields = const {
    #id: _f$id,
    #title: _f$title,
    #backgroundPath: _f$backgroundPath,
    #images: _f$images,
    #texts: _f$texts,
  };

  static ModelId _instantiate(DecodingData data) {
    return ModelId(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        backgroundPath: data.dec(_f$backgroundPath),
        images: data.dec(_f$images),
        texts: data.dec(_f$texts));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelId fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelId>(map);
  }

  static ModelId fromJson(String json) {
    return ensureInitialized().decodeJson<ModelId>(json);
  }
}

mixin ModelIdMappable {
  String toJson() {
    return ModelIdMapper.ensureInitialized()
        .encodeJson<ModelId>(this as ModelId);
  }

  Map<String, dynamic> toMap() {
    return ModelIdMapper.ensureInitialized()
        .encodeMap<ModelId>(this as ModelId);
  }

  ModelIdCopyWith<ModelId, ModelId, ModelId> get copyWith =>
      _ModelIdCopyWithImpl(this as ModelId, $identity, $identity);
  @override
  String toString() {
    return ModelIdMapper.ensureInitialized().stringifyValue(this as ModelId);
  }

  @override
  bool operator ==(Object other) {
    return ModelIdMapper.ensureInitialized()
        .equalsValue(this as ModelId, other);
  }

  @override
  int get hashCode {
    return ModelIdMapper.ensureInitialized().hashValue(this as ModelId);
  }
}

extension ModelIdValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelId, $Out> {
  ModelIdCopyWith<$R, ModelId, $Out> get $asModelId =>
      $base.as((v, t, t2) => _ModelIdCopyWithImpl(v, t, t2));
}

abstract class ModelIdCopyWith<$R, $In extends ModelId, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ModelImage, ModelImageCopyWith<$R, ModelImage, ModelImage>>
      get images;
  ListCopyWith<$R, ModelText, ModelTextCopyWith<$R, ModelText, ModelText>>
      get texts;
  $R call(
      {String? id,
      String? title,
      String? backgroundPath,
      List<ModelImage>? images,
      List<ModelText>? texts});
  ModelIdCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelIdCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelId, $Out>
    implements ModelIdCopyWith<$R, ModelId, $Out> {
  _ModelIdCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelId> $mapper =
      ModelIdMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ModelImage, ModelImageCopyWith<$R, ModelImage, ModelImage>>
      get images => ListCopyWith($value.images, (v, t) => v.copyWith.$chain(t),
          (v) => call(images: v));
  @override
  ListCopyWith<$R, ModelText, ModelTextCopyWith<$R, ModelText, ModelText>>
      get texts => ListCopyWith(
          $value.texts, (v, t) => v.copyWith.$chain(t), (v) => call(texts: v));
  @override
  $R call(
          {String? id,
          String? title,
          Object? backgroundPath = $none,
          List<ModelImage>? images,
          List<ModelText>? texts}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (backgroundPath != $none) #backgroundPath: backgroundPath,
        if (images != null) #images: images,
        if (texts != null) #texts: texts
      }));
  @override
  ModelId $make(CopyWithData data) => ModelId(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      backgroundPath: data.get(#backgroundPath, or: $value.backgroundPath),
      images: data.get(#images, or: $value.images),
      texts: data.get(#texts, or: $value.texts));

  @override
  ModelIdCopyWith<$R2, ModelId, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ModelIdCopyWithImpl($value, $cast, t);
}
