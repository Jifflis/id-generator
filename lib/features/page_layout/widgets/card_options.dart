import 'package:flutter/cupertino.dart';

import '../../../core/constant/style.dart';
import '../../../widgets/button.dart';

class CardOptions extends StatelessWidget {
  const CardOptions({
    this.onAddBackground,
    this.onAddImage,
    this.onAddText,
    Key? key,
  }) : super(key: key);

  final Function()? onAddBackground;
  final Function()? onAddImage;
  final Function()? onAddText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.colorWhite,
      padding: Style.primaryPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(text: 'Add Background', onPressed: onAddBackground),
          Button(text: 'Add Image', onPressed: onAddImage),
          Button(text: 'Add Text', onPressed: onAddText),
        ],
      ),
    );
  }
}
