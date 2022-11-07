import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

enum DragType {
  resize,
  drag,
}

enum TapArea {
  top,
  left,
  right,
  bottom,
  center,
}

abstract class Shape {
  Shape({
    required this.offset,
    this.paint,
    this.dragType = DragType.resize,
    this.resizeIndicatorRadius = 15,
  });

  Paint? paint;
  Offset offset;
  DragType dragType;
  TapArea? tapArea;

  Offset? resizeIndicatorTop;
  Offset? resizeIndicatorBottom;
  Offset? resizeIndicatorLeft;
  Offset? resizeIndicatorRight;

  double resizeIndicatorRadius;

  void draw(Canvas canvas, {bool showResizeIndicator = false});

  bool containsPoint(Offset point);

  void resize(DragUpdateDetails details);

  void drawResizeIndicator(Canvas canvas);

  void setDragType(TapArea tapArea) {
    if (tapArea == TapArea.center) {
      dragType = DragType.drag;
    } else {
      dragType = DragType.resize;
    }
  }

  void drawCircleIndicator(Canvas canvas, Offset offset) {
    canvas.drawCircle(
      offset,
      5,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill,
    );

    canvas.drawCircle(
      offset,
      resizeIndicatorRadius,
      Paint()
        ..color = Colors.transparent
        ..style = PaintingStyle.fill,
    );
  }

  void setTapArea(
    Offset point, {
    bool enableTop = true,
    bool enableBottom = true,
    bool enableRight = true,
    bool enableLeft = true,
  }) {
    if (resizeIndicatorLeft != null &&
        enableLeft &&
        isInsideCircle(point, resizeIndicatorLeft!, resizeIndicatorRadius)) {
      tapArea = TapArea.left;
      return;
    }
    if (resizeIndicatorRight != null &&
        enableRight &&
        isInsideCircle(point, resizeIndicatorRight!, resizeIndicatorRadius)) {
      tapArea = TapArea.right;
      return;
    }
    if (resizeIndicatorTop != null &&
        enableTop &&
        isInsideCircle(point, resizeIndicatorTop!, resizeIndicatorRadius)) {
      tapArea = TapArea.top;
      return;
    }

    if (resizeIndicatorBottom != null &&
        enableBottom &&
        isInsideCircle(point, resizeIndicatorBottom!, resizeIndicatorRadius)) {
      tapArea = TapArea.bottom;
      return;
    }
    tapArea = TapArea.center;
  }

  bool isInsideCircle(Offset point, Offset offset, double radius) =>
      pow(offset.dx - point.dx, 2) + pow(offset.dy - point.dy, 2) < pow(radius, 2);

  bool isInsideRectangle(Size size, Offset point, Offset offset) {
    final width = size.width + resizeIndicatorRadius;
    final height = size.height + resizeIndicatorRadius;

    Offset a = Offset(offset.dx - width / 2, offset.dy - height / 2);
    Offset b = Offset(offset.dx + width / 2, offset.dy + height / 2);

    return point.dx >= a.dx && point.dx <= b.dx && point.dy >= a.dy && point.dy <= b.dy;
  }

  Shape clone();
}
