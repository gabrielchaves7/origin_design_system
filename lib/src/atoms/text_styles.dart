import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';

extension OriginText on Text {
  Text getStyle(TextStyle newStyle) {
    return Text(
      data!,
      textAlign: textAlign,
      overflow: overflow,
      style: (style == null) ? newStyle : style!.merge(newStyle),
    );
  }

  Text get headingSmall => getStyle(
        const TextStyle(
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: OriginColors.blueGray900,
        ),
      );

  Text get subtitle => getStyle(
        const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: OriginColors.brandColorPrimary,
        ),
      );

  Text get subtitleSemibold => getStyle(
        const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: OriginColors.brandColorPrimary,
        ),
      );

  Text get paragraph => getStyle(
        const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: OriginColors.blueGray400,
        ),
      );

  Text get description => getStyle(
        const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: OriginColors.blueGray900,
        ),
      );
}
