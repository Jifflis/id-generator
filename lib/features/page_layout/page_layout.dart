import 'dart:ui';

import 'package:flutter/material.dart' hide Image;

import '../id_painter/painter_widget.dart';
import '../id_painter/model/shape.dart';

typedef OnSave = Function(List<Shape>, Image?);

class PageLayout extends StatefulWidget {
  const PageLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: PainterWidget(
        width: 300,
        height: 400,
      ),
    ));
  }
}
