part of 'page_layout_cubit.dart';

@freezed
class PageLayoutState with _$PageLayoutState {
  factory PageLayoutState({
    @Default([]) List<Shape> shapes,
    Shape? selectedShape,
    Image? backgroundImage,
  }) = _PageLayoutState;

  factory PageLayoutState.initialize() => PageLayoutState();
}
