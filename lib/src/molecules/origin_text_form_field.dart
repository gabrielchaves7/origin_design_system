import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Default text form field
class OriginTextField extends StatelessWidget {
  ///
  const OriginTextField({
    required this.label,
    this.icon,
    super.key,
  });

  /// Label displayed on top of the input field
  final String label;

  /// leading icon
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label).description,
        const SizedBox(
          height: OriginSpacing.x,
        ),
        TextField(
          style: OriginTextStyles.headingSmall.merge(
            const TextStyle(
              color: OriginColors.blueGray600,
            ),
          ),
          decoration: InputDecoration(
            prefixIcon: icon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: OriginColors.blueGray50),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: OriginColors.brandColorPrimary),
            ),
          ),
        ),
      ],
    );
  }
}
