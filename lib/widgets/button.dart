import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({this.onPressed, this.text = '', Key? key}) : super(key: key);
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed ?? () {}, child: Text(text));
  }
}
