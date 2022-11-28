import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../id_painter/model/shape.dart';

part 'page_layout_cubit.freezed.dart';

part 'page_layout_state.dart';

class PageLayoutCubit extends Cubit<PageLayoutState> {
  PageLayoutCubit() : super(PageLayoutState.initialize());

  set selectedShape(Shape? shape) {
    emit(state.copyWith(selectedShape: shape));
  }

  Shape? get selectedShape => state.selectedShape;

  set backgroundImage(Image? backgroundImage) {
    emit(state.copyWith(backgroundImage: backgroundImage));
  }

  void moveShapeToTop(Shape? shape) {
    if (shape == null) return;

    emit(state.copyWith(
        shapes: state.shapes.toList()
          ..remove(shape)
          ..insert(0, shape),
        selectedShape: shape));
  }

  void insertShape(Shape shape) {
    emit(state.copyWith(shapes: state.shapes.toList()..insert(0, shape), selectedShape: shape));
  }

  ///Retrieve shape from [state.shapes] base on [offset]
  ///
  Shape? retrieveShape(Offset offset) {
    return state.shapes.firstWhereOrNull((element) => element.containsPoint(offset));
  }
}
