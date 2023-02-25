import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

///
class OriginGraph extends StatelessWidget {
  /// Widget to show status
  const OriginGraph({
    required this.amount,
    required this.selectedAmount,
    super.key,
    this.selectedColor = OriginColors.green500,
    this.disabledColor = OriginColors.background,
  });

  /// Number of itens
  final int amount;

  /// Number of itens selected
  final int selectedAmount;

  /// Color of the selected containers
  final Color selectedColor;

  /// Color of the disabled containers
  final Color disabledColor;

  BoxConstraints get _boxConstraints => const BoxConstraints(
        maxWidth: 146,
        minHeight: 16,
        maxHeight: 24,
      );

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < amount; i++) {
      children.add(
        Expanded(
          child: Container(
            constraints: _boxConstraints,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: i < selectedAmount ? selectedColor : disabledColor,
            ),
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
