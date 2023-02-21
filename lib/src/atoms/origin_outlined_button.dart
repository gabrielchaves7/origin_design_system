import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Widget that loads the svg logo.
class OriginOutlinedButton extends StatelessWidget {
  ///Creates an OriginOutlinedButton
  const OriginOutlinedButton({
    required this.child,
    required this.onPressed,
    super.key,
  });

  /// button content
  final Widget child;

  /// callback to be called when button is pressed
  final VoidCallback? onPressed;

  @override
  Widget build(Object context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            OriginColors.brandColorPrimary,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            OriginTextStyles.button,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            OriginColors.neutralWhite,
          ),
        ),
        child: child,
      ),
    );
  }
}
