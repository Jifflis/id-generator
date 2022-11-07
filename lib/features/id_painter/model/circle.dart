import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:id_generator/features/id_painter/model/shape.dart';

class Circle extends Shape {
  Circle({
    required this.radius,
    required Offset offset,
    Paint? paint,
  }) : super(
          offset: offset,
          paint: paint,
        );
  double radius;

  @override
  bool containsPoint(Offset point) {
    bool isContainsPoint = isInsideCircle(point, offset, radius + resizeIndicatorRadius);

    if (isContainsPoint) {
      setTapArea(point);
      setDragType(tapArea!);
    }

    return isContainsPoint;
  }

  @override
  void draw(Canvas canvas, {bool showResizeIndicator = false}) {
    canvas.drawCircle(offset, radius, paint ?? Paint());

    if (showResizeIndicator) {
      drawResizeIndicator(canvas);
    }
  }

  @override
  void resize(DragUpdateDetails details) {
    final distance = (offset - details.localPosition).distance;
    radius = distance;
  }

  @override
  void drawResizeIndicator(Canvas canvas) {
    resizeIndicatorLeft = Offset(offset.dx - radius, offset.dy);
    resizeIndicatorRight = Offset(offset.dx + radius, offset.dy);
    resizeIndicatorTop = Offset(offset.dx, offset.dy - radius);
    resizeIndicatorBottom = Offset(offset.dx, offset.dy + radius);

    drawCircleIndicator(canvas, resizeIndicatorLeft!);
    drawCircleIndicator(canvas, resizeIndicatorRight!);
    drawCircleIndicator(canvas, resizeIndicatorBottom!);
    drawCircleIndicator(canvas, resizeIndicatorTop!);
  }

  @override
  Shape clone() {
    return Circle(radius: radius, offset: offset, paint: paint);
  }
}
