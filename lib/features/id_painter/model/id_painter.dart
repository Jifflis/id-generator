import 'dart:ui';

import 'package:flutter/material.dart' hide Image;
import 'package:id_generator/features/id_painter/model/shape.dart';

class IdPainter extends CustomPainter {
  IdPainter({required this.shapes, required this.selectedShape, this.backgroundImage});

  final List<Shape> shapes;
  final Shape? selectedShape;
  final Image? backgroundImage;

  @override
  void paint(Canvas canvas, Size size) {
    if (backgroundImage != null) {
      canvas.drawImage(backgroundImage!, Offset.zero, Paint());
    }

    for (Shape shape in shapes) {
      shape.draw(canvas, showResizeIndicator: selectedShape == shape);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
