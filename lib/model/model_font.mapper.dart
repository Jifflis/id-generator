// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_font.dart';

class AlignmentMapper extends EnumMapper<Alignment> {
  AlignmentMapper._();

  static AlignmentMapper? _instance;
  static AlignmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AlignmentMapper._());
    }
    return _instance!;
  }

  static Alignment fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Alignment decode(dynamic value) {
    switch (value) {
      case 'center':
        return Alignment.center;
      case 'right':
        return Alignment.right;
      case 'left':
        return Alignment.left;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Alignment self) {
    switch (self) {
      case Alignment.center:
        return 'center';
      case Alignment.right:
        return 'right';
      case Alignment.left:
        return 'left';
    }
  }
}

extension AlignmentMapperExtension on Alignment {
  String toValue() {
    AlignmentMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Alignment>(this) as String;
  }
}

class ModelFontMapper extends ClassMapperBase<ModelFont> {
  ModelFontMapper._();

  static ModelFontMapper? _instance;
  static ModelFontMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelFontMapper._());
      AlignmentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelFont';

  static String _$fontName(ModelFont v) => v.fontName;
  static const Field<ModelFont, String> _f$fontName =
      Field('fontName', _$fontName);
  static double _$fontSize(ModelFont v) => v.fontSize;
  static const Field<ModelFont, double> _f$fontSize =
      Field('fontSize', _$fontSize);
  static Alignment _$alignment(ModelFont v) => v.alignment;
  static const Field<ModelFont, Alignment> _f$alignment =
      Field('alignment', _$alignment, opt: true, def: Alignment.left);

  @override
  final MappableFields<ModelFont> fields = const {
    #fontName: _f$fontName,
    #fontSize: _f$fontSize,
    #alignment: _f$alignment,
  };

  static ModelFont _instantiate(DecodingData data) {
    return ModelFont(
        fontName: data.dec(_f$fontName),
        fontSize: data.dec(_f$fontSize),
        alignment: data.dec(_f$alignment));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelFont fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelFont>(map);
  }

  static ModelFont fromJson(String json) {
    return ensureInitialized().decodeJson<ModelFont>(json);
  }
}

mixin ModelFontMappable {
  String toJson() {
    return ModelFontMapper.ensureInitialized()
        .encodeJson<ModelFont>(this as ModelFont);
  }

  Map<String, dynamic> toMap() {
    return ModelFontMapper.ensureInitialized()
        .encodeMap<ModelFont>(this as ModelFont);
  }

  ModelFontCopyWith<ModelFont, ModelFont, ModelFont> get copyWith =>
      _ModelFontCopyWithImpl(this as ModelFont, $identity, $identity);
  @override
  String toString() {
    return ModelFontMapper.ensureInitialized()
        .stringifyValue(this as ModelFont);
  }

  @override
  bool operator ==(Object other) {
    return ModelFontMapper.ensureInitialized()
        .equalsValue(this as ModelFont, other);
  }

  @override
  int get hashCode {
    return ModelFontMapper.ensureInitialized().hashValue(this as ModelFont);
  }
}

extension ModelFontValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelFont, $Out> {
  ModelFontCopyWith<$R, ModelFont, $Out> get $asModelFont =>
      $base.as((v, t, t2) => _ModelFontCopyWithImpl(v, t, t2));
}

abstract class ModelFontCopyWith<$R, $In extends ModelFont, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fontName, double? fontSize, Alignment? alignment});
  ModelFontCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelFontCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelFont, $Out>
    implements ModelFontCopyWith<$R, ModelFont, $Out> {
  _ModelFontCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelFont> $mapper =
      ModelFontMapper.ensureInitialized();
  @override
  $R call({String? fontName, double? fontSize, Alignment? alignment}) =>
      $apply(FieldCopyWithData({
        if (fontName != null) #fontName: fontName,
        if (fontSize != null) #fontSize: fontSize,
        if (alignment != null) #alignment: alignment
      }));
  @override
  ModelFont $make(CopyWithData data) => ModelFont(
      fontName: data.get(#fontName, or: $value.fontName),
      fontSize: data.get(#fontSize, or: $value.fontSize),
      alignment: data.get(#alignment, or: $value.alignment));

  @override
  ModelFontCopyWith<$R2, ModelFont, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelFontCopyWithImpl($value, $cast, t);
}
