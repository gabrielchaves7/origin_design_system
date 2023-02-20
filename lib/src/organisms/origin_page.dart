import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';
import 'package:origin_design_system/src/atoms/spacing.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';

class OriginPage extends StatelessWidget {
  final Widget body;
  const OriginPage({super.key, required this.body});

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
