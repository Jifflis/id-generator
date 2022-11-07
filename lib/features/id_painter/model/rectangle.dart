import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:id_generator/features/id_painter/model/shape.dart';

class Rectangle extends Shape {
  Rectangle({
    required this.width,
    required this.height,
    required Offset offset,
    Paint? paint,
  }) : super(offset: offset, paint: paint);

  double width;
  double height;

  @override
  void draw(Canvas canvas, {bool showResizeIndicator = false}) {
    canvas.drawRect(
      Rect.fromCenter(center: offset, width: width, height: height),
      paint ?? Paint(),
    );

    if (showResizeIndicator) {
      drawResizeIndicator(canvas);
    }
  }

  @override
  bool containsPoint(Offset point) {
    final isContainsPoint = isInsideRectangle(Size(width, height), point, offset);

    if (isContainsPoint) {
      setTapArea(point);
      setDragType(tapArea!);
    }

    return isContainsPoint;
  }

  @override
  void resize(DragUpdateDetails details) {
    final distance = (offset - details.localPosition).distance;
    width = distance;
  }

  @override
  void drawResizeIndicator(Canvas canvas) {
    resizeIndicatorLeft = Offset(offset.dx - (width / 2), offset.dy);
    resizeIndicatorRight = Offset(offset.dx + (width / 2), offset.dy);
    resizeIndicatorTop = Offset(offset.dx, offset.dy - (height / 2));
    resizeIndicatorBottom = Offset(offset.dx, offset.dy + (height / 2));

    drawCircleIndicator(canvas, resizeIndicatorLeft!);
    drawCircleIndicator(canvas, resizeIndicatorRight!);
    drawCircleIndicator(canvas, resizeIndicatorTop!);
    drawCircleIndicator(canvas, resizeIndicatorBottom!);
  }

  @override
  Shape clone() {
    // TODO: implement clone
    throw UnimplementedError();
  }
}
