import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:origin_design_system/assets.dart';

/// The shape of the Icon
enum OriginIconShape {
  /// Circle will be with rounded borders
  circle,
}

/// The size the Icon will be rendered
enum OriginIconSize {
  /// small will be 32 x 32
  small,

  /// medium will be 48 x 48
  medium,

  /// large will be 64 x 64
  large,
}

/// Widget that loads the svg Icon.
class OriginIcon extends StatelessWidget {
  ///Creates an OriginIcon
  const OriginIcon({
    super.key,
    this.shape = OriginIconShape.circle,
    this.size = OriginIconSize.large,
  });

  /// The shape of the icon. Can be circle
  final OriginIconShape shape;

  /// The size of the icon. Can be small, medium or large
  final OriginIconSize size;

  @override
  Widget build(Object context) {
    return Container(
      width: _getSize(),
      height: _getSize(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        Assets.origin_design_system$assets_origin_icon_circle_svg,
        semanticsLabel: 'An image representing the logo of Origin',
        fit: BoxFit.cover,
      ),
    );
  }

  double _getSize() {
    var logoSize = 64.0;
    if (size == OriginIconSize.small) {
      logoSize = 32.0;
    } else if (size == OriginIconSize.medium) {
      logoSize = 48.0;
    }

    return logoSize;
  }
}
