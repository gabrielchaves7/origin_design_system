import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// The size the Icon will be rendered
enum OriginIconSize {
  /// 24 x 24
  xSmall,

  /// 32 x 32
  small,

  /// 48 x 48
  medium,

  /// 64 x 64
  large,
}

/// Widget that loads the svg Icon.
class OriginIcon extends StatelessWidget {
  ///Creates an OriginIcon
  const OriginIcon({
    required this.iconPath,
    super.key,
    this.size = OriginIconSize.large,
    this.colorFilter,
  });

  /// The size of the icon. Can be small, medium or large
  final OriginIconSize size;

  /// The SVG path of the icon to be rendered
  final String iconPath;

  /// The color of the icon
  final ColorFilter? colorFilter;

  @override
  Widget build(Object context) {
    return Container(
      width: _getSize(),
      height: _getSize(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        colorFilter: colorFilter,
        iconPath,
        semanticsLabel: 'An image representing the logo of Origin',
        fit: BoxFit.cover,
      ),
    );
  }

  double _getSize() {
    var logoSize = 64.0;
    if (size == OriginIconSize.xSmall) {
      logoSize = 24.0;
    } else if (size == OriginIconSize.small) {
      logoSize = 32.0;
    } else if (size == OriginIconSize.medium) {
      logoSize = 48.0;
    }

    return logoSize;
  }
}
