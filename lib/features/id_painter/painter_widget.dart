import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:id_generator/features/id_painter/model/circle.dart';
import 'package:id_generator/features/id_painter/model/square.dart';
import 'package:id_generator/features/id_painter/model/text.dart';

import '../../core/constant/style.dart';
import 'model/id_painter.dart';
import 'model/shape.dart';

typedef OnSave = Function(List<Shape>, Image?);

class PainterWidget extends StatefulWidget {
  const PainterWidget({
    required this.width,
    required this.height,
    this.onSave,
    this.backgroundImage,
    this.defaultShapes = const <Shape>[],
    Key? key,
  }) : super(key: key);
  final List<Shape> defaultShapes;
  final Image? backgroundImage;
  final OnSave? onSave;
  final double width;
  final double height;

  @override
  State<PainterWidget> createState() => _PainterWidgetState();
}

class _PainterWidgetState extends State<PainterWidget> {
  List<Shape> _shapes = [];
  Shape? _selectedShape;
  Image? _backgroundImage;

  void _onTapDownFn(TapDownDetails details) {
    _selectedShape = _shapes.reversed
        .firstWhereOrNull((element) => element.containsPoint(details.localPosition));
    if (_selectedShape != null) {
      _shapes
        ..remove(_selectedShape)
        ..add(_selectedShape!);
    }
    setState(() {});
  }

  void _onPanUpdateFn(DragUpdateDetails details) {
    if (_selectedShape == null) return;

    if (_selectedShape!.dragType == DragType.drag) {
      _selectedShape!.offset = _selectedShape!.offset + details.delta;
    } else {
      _selectedShape!.resize(details);
    }

    setState(() {});
  }

  @override
  void initState() {
    _shapes = widget.defaultShapes.toList();
    _backgroundImage = widget.backgroundImage;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PainterWidget oldWidget) {
    _backgroundImage = widget.backgroundImage;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.black,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTapDown: _onTapDownFn,
            onPanUpdate: _onPanUpdateFn,
            child: CustomPaint(
              size: Size(widget.width, widget.height),
              painter: IdPainter(
                shapes: _shapes,
                selectedShape: _selectedShape,
                backgroundImage: _backgroundImage,
              ),
            ),
          ),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _shapes.insert(
                        0,
                        Circle(
                            radius: 40,
                            offset: const Offset(300 / 2, 500 / 2),
                            paint: Paint()
                              ..color = Colors.lightGreenAccent
                              ..strokeWidth = 3
                              ..style = PaintingStyle.fill
                              ..strokeCap = StrokeCap.round));

                    setState(() {});
                  },
                  child: const Text('Add Circle'),
                ),
                TextButton(
                  onPressed: () {
                    _shapes.insert(
                        0,
                        Square(
                            size: 80,
                            offset: const Offset(300 / 2, 500 / 2),
                            paint: Paint()
                              ..color = Colors.yellow
                              ..strokeWidth = 3
                              ..style = PaintingStyle.fill
                              ..strokeCap = StrokeCap.round));
                  },
                  child: const Text('Add Square'),
                ),
                TextButton(
                  onPressed: () {
                    _shapes.insert(
                        0,
                        TextShape(
                          offset: const Offset(300 / 2, 500 / 2),
                          text: 'Sample Text',
                          maxWidth: 1000,
                          textStyle: const TextStyle(
                            color: Colors.white
                          )
                        ));
                  },
                  child: const Text('Add Text'),
                ),
                TextButton(
                  onPressed: () {
                    //  _handleSavePressed();
                    // shapes.add(TextShape(
                    //   text: 'Sample Text',
                    //   textStyle: TextStyle(backgroundColor: Colors.green),
                    //   offset: const Offset(300 / 2, 500 / 2),
                    //   maxWidth: 100,
                    // ));
                  },
                  child: const Text('Add Text'),
                ),
                TextButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform.pickFiles(withData: true);

                    if (result != null) {
                      final bytes = result.files.first.bytes;
                      if (bytes != null) {
                        _backgroundImage = await decodeImageFromList(bytes);
                        setState(() {});
                      }
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: const Text('Add background'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

// Future<void> _handleSavePressed() async {
//   PictureRecorder recorder = PictureRecorder();
//   Canvas canvas = Canvas(recorder);
//   var painter = IdPainter(
//     shapes: shapes,
//     selectedShape: _selectedShape,
//     backgroundImage: backgroundImage,
//   );
//
//   var size = Size(300, 500);
//
//   painter.paint(canvas, size);
//   Image renderedImage =
//       await recorder.endRecording().toImage(size.width.floor(), size.height.floor());
//
//   var pngBytes = await renderedImage.toByteData(format: ImageByteFormat.png);
//
//   Directory saveDir = await getApplicationDocumentsDirectory();
//   String path = '${saveDir.path}/custom_image.jpg';
//   File saveFile = File(path);
//
//   if (!saveFile.existsSync()) {
//     saveFile.createSync(recursive: true);
//   }
//   if (pngBytes != null) {
//     saveFile.writeAsBytesSync(pngBytes.buffer.asUint8List(), flush: true);
//     await GallerySaver.saveImage(path, albumName: 'ID Generator');
//
//     print('Image was saved!');
//   } else {
//     print('Image was saving uncessfull!');
//   }
// }
}
