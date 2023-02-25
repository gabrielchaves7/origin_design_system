import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Type of the button, can be primary or secondary
enum OriginOutlinedButtonType {
  /// background with the primary color without borders
  primary,

  /// borders with the primary color and no background color
  secondary,
}

/// Widget that loads the svg logo.
class OriginOutlinedButton extends StatelessWidget {
  ///Creates an OriginOutlinedButton
  const OriginOutlinedButton({
    required this.child,
    required this.onPressed,
    this.buttonType = OriginOutlinedButtonType.primary,
    super.key,
  });

  /// button content
  final Widget child;

  /// callback to be called when button is pressed
  final VoidCallback? onPressed;

  /// will define the style of the button. Can be primary or secondary
  final OriginOutlinedButtonType buttonType;

  @override
  Widget build(Object context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 56,
        maxHeight: 56,
        maxWidth: 320,
        minWidth: 320,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.resolveWith<Color>(_getBackgroundColor),
          side: MaterialStateProperty.all<BorderSide?>(
            _getBorderSide(),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            OriginTextStyles.button,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            _getForegroundColor(),
          ),
        ),
        child: child,
      ),
    );
  }

  Color _getBackgroundColor(Set<MaterialState> states) {
    var color = OriginColors.neutralWhite;
    if (buttonType == OriginOutlinedButtonType.primary) {
      if (states.contains(MaterialState.disabled)) {
        color = OriginColors.brandColorPrimaryLight;
      } else {
        color = OriginColors.brandColorPrimary;
      }
    }

    return color;
  }

  BorderSide? _getBorderSide() {
    BorderSide? borderSide;
    if (buttonType == OriginOutlinedButtonType.secondary) {
      borderSide =
          const BorderSide(width: 2, color: OriginColors.brandColorPrimary);
    }

    return borderSide;
  }

  Color _getForegroundColor() {
    var color = OriginColors.neutralWhite;
    if (buttonType == OriginOutlinedButtonType.secondary) {
      color = OriginColors.brandColorPrimary;
    }

    return color;
  }
}
