import 'package:flutter/material.dart';

class Style {
  static const double spacing8 = 8;

  ///Padding ========================================================
  static const EdgeInsets primaryPadding = EdgeInsets.all(4);

  ///Colors =========================================================
  static const Color colorWhite = Colors.white;

  /// Grey1 - Used: Bottom Nav not selected icons, grey checkmarks, typography
  static const Color colorGrey1 = Color(0xFF555759);

  /// Grey2 - Used: Search boxes, input boxes,
  static const Color colorGrey2 = Color(0xFFB0B1B3);

  /// Grey3 - Used: toggle switch
  static const Color colorGrey3 = Color(0xFFDADFE1);

  /// Grey4 - Used: app header
  static const Color colorGrey4 = Color(0xFFF1F2F3);

  /// Screen Background - Used: for screen background to give translucent effect.
  static const Color colorScreenBackground = Color(0x4DDADFE1);

  /// White Card - Used: on cards to leave translucent effect.
  static const Color colorWhiteCard = Color(0xFAFFFFFF);

  /// Transparent - Used: to hide
  static const Color colorTransparent = Colors.transparent;

  ///Text Styling =====================================================
  static const boldFontWeight = FontWeight.w700;
  static const semiBoldFontWeight = FontWeight.w600;
  static const mediumFontWeight = FontWeight.w500;
  static const regularFontWeight = FontWeight.w400;
  static const lightFontWeight = FontWeight.w300;

  /// bodyCopy - 14pt regular
  static TextStyle get bodyCopy =>
      const TextStyle(fontSize: 14, height: 1.25, letterSpacing: 0, fontWeight: regularFontWeight);
}
