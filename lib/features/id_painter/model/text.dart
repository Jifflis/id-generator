import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:id_generator/features/id_painter/model/shape.dart';

class TextShape extends Shape {
  TextShape({
    required this.text,
    required super.offset,
    required this.maxWidth,
    this.textStyle,
    this.textDirection = TextDirection.ltr,
  }) {
    _initializeTextStyle();
  }

  late TextPainter textPainter;
  String text;
  TextStyle? textStyle;
  TextDirection textDirection;
  double maxWidth;

  late Offset _finalOffset;

  void _initializeTextStyle() {
    textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      textDirection: textDirection,
    )..layout(
        minWidth: 0,
        maxWidth: maxWidth,
      );
  }

  @override
  bool containsPoint(Offset point) {
    final isContainsPoint = isInsideRectangle(
        textPainter.size, point, Offset(offset.dx, offset.dy + textPainter.size.height / 2));

    if (isContainsPoint) {
      setTapArea(point, enableTop: false);
      setDragType(tapArea!);
    }

    return isContainsPoint;
  }

  @override
  void draw(Canvas canvas, {bool showResizeIndicator = false}) {
    _finalOffset = Offset(offset.dx - (textPainter.width / 2), offset.dy);
    textPainter.paint(canvas, _finalOffset);

    if (showResizeIndicator) {
      drawResizeIndicator(canvas);
    }
  }

  @override
  void drawResizeIndicator(Canvas canvas) {
    final size = textPainter.size;

    resizeIndicatorLeft = Offset(offset.dx - (size.width / 2), offset.dy + (size.height / 2));
    resizeIndicatorRight = Offset(offset.dx + (size.width / 2), offset.dy + (size.height / 2));
    resizeIndicatorTop = Offset(offset.dx, offset.dy);
    resizeIndicatorBottom = Offset(offset.dx, offset.dy + (size.height));

    drawCircleIndicator(canvas, resizeIndicatorLeft!);
    drawCircleIndicator(canvas, resizeIndicatorRight!);
    drawCircleIndicator(canvas, resizeIndicatorBottom!);
  }

  @override
  void resize(DragUpdateDetails details) {
    TextStyle newTextStyle = textStyle ?? const TextStyle();
    double font = newTextStyle.fontSize ?? 14;
    print('the tap area bro $tapArea');
    // if (tapArea == TapArea.top) {
    //   if (details.delta.dy < 0) {
    //     font += details.delta.distance;
    //   } else {
    //     font -= details.delta.distance;
    //   }
    // }

    if (tapArea == TapArea.bottom) {
      if (details.delta.dy < 0) {
        font -= details.delta.distance;
      } else {
        font += details.delta.distance;
      }
    }

    if (tapArea == TapArea.left) {
      if (details.delta.dx < 0) {
        font += details.delta.distance;
      } else {
        font -= details.delta.distance;
      }
    }

    if (tapArea == TapArea.right) {
      if (details.delta.dx < 0) {
        font -= details.delta.distance;
      } else {
        font += details.delta.distance;
      }
    }

    textStyle = newTextStyle.copyWith(fontSize: font == 6 ? 6 : font);
    _initializeTextStyle();
  }

  @override
  Shape clone() {
    // TODO: implement clone
    throw UnimplementedError();
  }
}
