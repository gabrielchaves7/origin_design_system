import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';

///Extension for Text, use it to style Text widget.
extension OriginText on Text {
  /// merge the style from current text span with this one
  Text getStyle(TextStyle newStyle) {
    return Text(
      data!,
      textAlign: textAlign,
      overflow: overflow,
      style: (style == null) ? newStyle : newStyle.merge(style),
    );
  }

  /// return your textspan style merged with the headingSmall text style
  Text get headingSmall => getStyle(OriginTextStyles.headingSmall);

  /// return your textspan style merged with the subtitle text style
  Text get subtitle => getStyle(OriginTextStyles.subtitle);

  /// return your textspan style merged with the subtitleSemibold text style
  Text get subtitleSemibold => getStyle(OriginTextStyles.subtitleSemibold);

  /// return your textspan style merged with the paragraph text style
  Text get paragraph => getStyle(OriginTextStyles.paragraph);

  /// return your textspan style merged with the description text style
  Text get description => getStyle(OriginTextStyles.description);
}

///TextStyles
class OriginTextStyles {
  /// Heading small is font Rubik, weight 500 and size 24
  static TextStyle get headingSmall => const TextStyle(
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: OriginColors.blueGray900,
      );

  /// subtitle is font WorkSans, weight 400 and size 20
  static TextStyle get subtitle => const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: OriginColors.brandColorPrimary,
      );

  /// subtitleSemiBold is font WorkSans, weight 600 and size 20
  static TextStyle get subtitleSemibold => const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: OriginColors.brandColorPrimary,
      );

  /// paragraph is font WorkSans, weight 400 and size 16
  static TextStyle get paragraph => const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: OriginColors.blueGray400,
      );

  /// font WorkSans, weight 400 and size 14
  static TextStyle get description => const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: OriginColors.blueGray900,
      );

  /// font WorkSans, weight 400 and size 14
  static TextStyle get button => const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: OriginColors.neutralWhite,
      );
}
