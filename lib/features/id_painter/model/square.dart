import 'package:flutter/material.dart';
import 'package:id_generator/features/id_painter/model/rectangle.dart';

class Square extends Rectangle {
  Square({
    required double size,
    required super.offset,
    super.paint,
  }) : super(
          height: size,
          width: size,
        );

  Square copyWith({double? size, Offset? offset, Paint? paint}) {
    return Square(
      size: size ?? height,
      offset: offset ?? this.offset,
      paint: paint ?? this.paint,
    );
  }

  @override
  void resize(DragUpdateDetails details) {
    final distance = ((offset - details.localPosition).distance) * 2;
    width = distance;
    height = distance;
  }
}
