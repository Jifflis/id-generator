// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model_text.dart';

class TextPositionMapper extends EnumMapper<TextPosition> {
  TextPositionMapper._();

  static TextPositionMapper? _instance;
  static TextPositionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextPositionMapper._());
    }
    return _instance!;
  }

  static TextPosition fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TextPosition decode(dynamic value) {
    switch (value) {
      case 'vertical':
        return TextPosition.vertical;
      case 'horizontal':
        return TextPosition.horizontal;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TextPosition self) {
    switch (self) {
      case TextPosition.vertical:
        return 'vertical';
      case TextPosition.horizontal:
        return 'horizontal';
    }
  }
}

extension TextPositionMapperExtension on TextPosition {
  String toValue() {
    TextPositionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TextPosition>(this) as String;
  }
}

class ModelTextMapper extends ClassMapperBase<ModelText> {
  ModelTextMapper._();

  static ModelTextMapper? _instance;
  static ModelTextMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelTextMapper._());
      ModelItemMapper.ensureInitialized();
      ModelFontMapper.ensureInitialized();
      TextPositionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelText';

  static String _$id(ModelText v) => v.id;
  static const Field<ModelText, String> _f$id = Field('id', _$id);
  static ModelItem _$item(ModelText v) => v.item;
  static const Field<ModelText, ModelItem> _f$item = Field('item', _$item);
  static ModelFont _$font(ModelText v) => v.font;
  static const Field<ModelText, ModelFont> _f$font = Field('font', _$font);
  static String _$text(ModelText v) => v.text;
  static const Field<ModelText, String> _f$text = Field('text', _$text);
  static double? _$maxWidth(ModelText v) => v.maxWidth;
  static const Field<ModelText, double> _f$maxWidth =
      Field('maxWidth', _$maxWidth, opt: true);
  static TextPosition _$textPosition(ModelText v) => v.textPosition;
  static const Field<ModelText, TextPosition> _f$textPosition = Field(
      'textPosition', _$textPosition,
      opt: true, def: TextPosition.horizontal);

  @override
  final MappableFields<ModelText> fields = const {
    #id: _f$id,
    #item: _f$item,
    #font: _f$font,
    #text: _f$text,
    #maxWidth: _f$maxWidth,
    #textPosition: _f$textPosition,
  };

  static ModelText _instantiate(DecodingData data) {
    return ModelText(
        id: data.dec(_f$id),
        item: data.dec(_f$item),
        font: data.dec(_f$font),
        text: data.dec(_f$text),
        maxWidth: data.dec(_f$maxWidth),
        textPosition: data.dec(_f$textPosition));
  }

  @override
  final Function instantiate = _instantiate;

  static ModelText fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelText>(map);
  }

  static ModelText fromJson(String json) {
    return ensureInitialized().decodeJson<ModelText>(json);
  }
}

mixin ModelTextMappable {
  String toJson() {
    return ModelTextMapper.ensureInitialized()
        .encodeJson<ModelText>(this as ModelText);
  }

  Map<String, dynamic> toMap() {
    return ModelTextMapper.ensureInitialized()
        .encodeMap<ModelText>(this as ModelText);
  }

  ModelTextCopyWith<ModelText, ModelText, ModelText> get copyWith =>
      _ModelTextCopyWithImpl(this as ModelText, $identity, $identity);
  @override
  String toString() {
    return ModelTextMapper.ensureInitialized()
        .stringifyValue(this as ModelText);
  }

  @override
  bool operator ==(Object other) {
    return ModelTextMapper.ensureInitialized()
        .equalsValue(this as ModelText, other);
  }

  @override
  int get hashCode {
    return ModelTextMapper.ensureInitialized().hashValue(this as ModelText);
  }
}

extension ModelTextValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelText, $Out> {
  ModelTextCopyWith<$R, ModelText, $Out> get $asModelText =>
      $base.as((v, t, t2) => _ModelTextCopyWithImpl(v, t, t2));
}

abstract class ModelTextCopyWith<$R, $In extends ModelText, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ModelItemCopyWith<$R, ModelItem, ModelItem> get item;
  ModelFontCopyWith<$R, ModelFont, ModelFont> get font;
  $R call(
      {String? id,
      ModelItem? item,
      ModelFont? font,
      String? text,
      double? maxWidth,
      TextPosition? textPosition});
  ModelTextCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelTextCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelText, $Out>
    implements ModelTextCopyWith<$R, ModelText, $Out> {
  _ModelTextCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelText> $mapper =
      ModelTextMapper.ensureInitialized();
  @override
  ModelItemCopyWith<$R, ModelItem, ModelItem> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  ModelFontCopyWith<$R, ModelFont, ModelFont> get font =>
      $value.font.copyWith.$chain((v) => call(font: v));
  @override
  $R call(
          {String? id,
          ModelItem? item,
          ModelFont? font,
          String? text,
          Object? maxWidth = $none,
          TextPosition? textPosition}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (item != null) #item: item,
        if (font != null) #font: font,
        if (text != null) #text: text,
        if (maxWidth != $none) #maxWidth: maxWidth,
        if (textPosition != null) #textPosition: textPosition
      }));
  @override
  ModelText $make(CopyWithData data) => ModelText(
      id: data.get(#id, or: $value.id),
      item: data.get(#item, or: $value.item),
      font: data.get(#font, or: $value.font),
      text: data.get(#text, or: $value.text),
      maxWidth: data.get(#maxWidth, or: $value.maxWidth),
      textPosition: data.get(#textPosition, or: $value.textPosition));

  @override
  ModelTextCopyWith<$R2, ModelText, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ModelTextCopyWithImpl($value, $cast, t);
}
