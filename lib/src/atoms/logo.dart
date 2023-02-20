import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:origin_design_system/assets.dart';

/// The shape of the Logo
enum LogoShape {
  /// Circle will be with rounded borders
  circle,
}

/// The size the Logo will be rendered
enum LogoSize {
  /// small will be 32 x 32
  small,

  /// medium will be 48 x 48
  medium,

  /// large will be 64 x 64
  large,
}

/// Widget that loads the svg logo.
class Logo extends StatelessWidget {
  ///Creates an Logo
  const Logo({
    super.key,
    this.shape = LogoShape.circle,
    this.size = LogoSize.large,
  });
  final LogoShape shape;
  final LogoSize size;

  @override
  Widget build(Object context) {
    return SvgPicture.asset(
      Assets.assets_origin_icon_circle_svg,
      semanticsLabel: 'Origin Logo',
      width: _getSize(),
      height: _getSize(),
    );
  }

  double _getSize() {
    var logoSize = 64.0;
    if (size == LogoSize.small) {
      logoSize = 32.0;
    } else if (size == LogoSize.medium) {
      logoSize = 48.0;
    }

    return logoSize;
  }
}
