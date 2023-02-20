import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';
import 'package:origin_design_system/src/atoms/origin_logo.dart';

/// AppBar with logo
class OriginAppBar extends StatelessWidget {
  ///
  const OriginAppBar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: OriginColors.neutralWhite,
      title: const OriginLogo(),
      centerTitle: true,
    );
  }
}
