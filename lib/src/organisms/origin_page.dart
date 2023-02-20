import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';
import 'package:origin_design_system/src/atoms/spacing.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';

/// The default page with background color and appbar set.
/// Use it on every page you create.
class OriginPage extends StatelessWidget {
  ///
  const OriginPage({required this.body, super.key});

  /// The body to be rendered inside the scaffold widget
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OriginAppBar().build(context),
      backgroundColor: OriginColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: OriginSpacing.xx),
        child: body,
      ),
    );
  }
}
