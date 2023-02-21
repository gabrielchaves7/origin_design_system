import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Widget that loads the svg logo.
class OriginCard extends StatelessWidget {
  ///Creates an OriginCard
  const OriginCard({
    required this.child,
    super.key,
  });

  /// The widget to be rendered inside the card
  final Widget child;

  @override
  Widget build(Object context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: OriginColors.neutralWhite,
      shadowColor: OriginColors.shadow,
      child: Padding(
        padding: const EdgeInsets.all(OriginSpacing.xx),
        child: child,
      ),
    );
  }
}
