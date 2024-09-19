// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'page_layout_state.dart';

class PageLayoutStateMapper extends ClassMapperBase<PageLayoutState> {
  PageLayoutStateMapper._();

  static PageLayoutStateMapper? _instance;
  static PageLayoutStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PageLayoutStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PageLayoutState';

  static List<Shape> _$shapes(PageLayoutState v) => v.shapes;
  static const Field<PageLayoutState, List<Shape>> _f$shapes =
      Field('shapes', _$shapes, opt: true, def: const []);
  static Shape? _$selectedShape(PageLayoutState v) => v.selectedShape;
  static const Field<PageLayoutState, Shape> _f$selectedShape =
      Field('selectedShape', _$selectedShape, opt: true);
  static Image? _$backgroundImage(PageLayoutState v) => v.backgroundImage;
  static const Field<PageLayoutState, Image> _f$backgroundImage =
      Field('backgroundImage', _$backgroundImage, opt: true);

  @override
  final MappableFields<PageLayoutState> fields = const {
    #shapes: _f$shapes,
    #selectedShape: _f$selectedShape,
    #backgroundImage: _f$backgroundImage,
  };

  static PageLayoutState _instantiate(DecodingData data) {
    return PageLayoutState(
        shapes: data.dec(_f$shapes),
        selectedShape: data.dec(_f$selectedShape),
        backgroundImage: data.dec(_f$backgroundImage));
  }

  @override
  final Function instantiate = _instantiate;

  static PageLayoutState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PageLayoutState>(map);
  }

  static PageLayoutState fromJson(String json) {
    return ensureInitialized().decodeJson<PageLayoutState>(json);
  }
}

mixin PageLayoutStateMappable {
  String toJson() {
    return PageLayoutStateMapper.ensureInitialized()
        .encodeJson<PageLayoutState>(this as PageLayoutState);
  }

  Map<String, dynamic> toMap() {
    return PageLayoutStateMapper.ensureInitialized()
        .encodeMap<PageLayoutState>(this as PageLayoutState);
  }

  PageLayoutStateCopyWith<PageLayoutState, PageLayoutState, PageLayoutState>
      get copyWith => _PageLayoutStateCopyWithImpl(
          this as PageLayoutState, $identity, $identity);
  @override
  String toString() {
    return PageLayoutStateMapper.ensureInitialized()
        .stringifyValue(this as PageLayoutState);
  }

  @override
  bool operator ==(Object other) {
    return PageLayoutStateMapper.ensureInitialized()
        .equalsValue(this as PageLayoutState, other);
  }

  @override
  int get hashCode {
    return PageLayoutStateMapper.ensureInitialized()
        .hashValue(this as PageLayoutState);
  }
}

extension PageLayoutStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PageLayoutState, $Out> {
  PageLayoutStateCopyWith<$R, PageLayoutState, $Out> get $asPageLayoutState =>
      $base.as((v, t, t2) => _PageLayoutStateCopyWithImpl(v, t, t2));
}

abstract class PageLayoutStateCopyWith<$R, $In extends PageLayoutState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Shape, ObjectCopyWith<$R, Shape, Shape>> get shapes;
  $R call({List<Shape>? shapes, Shape? selectedShape, Image? backgroundImage});
  PageLayoutStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PageLayoutStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PageLayoutState, $Out>
    implements PageLayoutStateCopyWith<$R, PageLayoutState, $Out> {
  _PageLayoutStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PageLayoutState> $mapper =
      PageLayoutStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Shape, ObjectCopyWith<$R, Shape, Shape>> get shapes =>
      ListCopyWith($value.shapes, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(shapes: v));
  @override
  $R call(
          {List<Shape>? shapes,
          Object? selectedShape = $none,
          Object? backgroundImage = $none}) =>
      $apply(FieldCopyWithData({
        if (shapes != null) #shapes: shapes,
        if (selectedShape != $none) #selectedShape: selectedShape,
        if (backgroundImage != $none) #backgroundImage: backgroundImage
      }));
  @override
  PageLayoutState $make(CopyWithData data) => PageLayoutState(
      shapes: data.get(#shapes, or: $value.shapes),
      selectedShape: data.get(#selectedShape, or: $value.selectedShape),
      backgroundImage: data.get(#backgroundImage, or: $value.backgroundImage));

  @override
  PageLayoutStateCopyWith<$R2, PageLayoutState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PageLayoutStateCopyWithImpl($value, $cast, t);
}
