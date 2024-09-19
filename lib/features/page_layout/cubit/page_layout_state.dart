import 'dart:ui';

import 'package:dart_mappable/dart_mappable.dart';

import '../../id_painter/model/shape.dart';

part 'page_layout_state.mapper.dart';

@MappableClass()
class PageLayoutState with PageLayoutStateMappable {
  const PageLayoutState({
    this.shapes = const [],
    this.selectedShape,
    this.backgroundImage,
  });

  final List<Shape> shapes;
  final Shape? selectedShape;
  final Image? backgroundImage;
}
