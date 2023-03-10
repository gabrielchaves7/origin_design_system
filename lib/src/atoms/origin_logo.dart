import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:origin_design_system/assets.dart';

/// Widget that loads the svg logo.
class OriginLogo extends StatelessWidget {
  ///Creates an OriginLogo
  const OriginLogo({
    super.key,
  });

  @override
  Widget build(Object context) {
    return Container(
      width: 100,
      height: 32,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        Assets.origin_design_system$assets_logo_svg,
        semanticsLabel: 'Image with text Origin',
        fit: BoxFit.cover,
      ),
    );
  }
}
