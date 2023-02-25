import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Default text form field
class OriginTextField extends StatelessWidget {
  ///
  const OriginTextField({
    required this.label,
    this.leadingIconPath,
    this.textInputType,
    this.inputFormatters,
    this.errorText,
    this.onChanged,
    super.key,
  });

  /// Label displayed on top of the input field
  final String label;

  /// leading icon
  final String? leadingIconPath;

  /// The type of information for which to optimize the text input control
  final TextInputType? textInputType;

  /// Optional input validation and formatting overrides
  final List<TextInputFormatter>? inputFormatters;

  /// Error text to be displayed bellow the input
  final String? errorText;

  /// Called when user change the text field value
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 320,
        minWidth: 232,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style:
                hasError ? const TextStyle(color: OriginColors.red700) : null,
          ).description,
          const SizedBox(
            height: OriginSpacing.x,
          ),
          TextField(
            onChanged: (value) => onChanged?.call(value.replaceAll(',', '')),
            keyboardType: textInputType,
            inputFormatters: inputFormatters,
            style: OriginTextStyles.headingSmall.merge(
              TextStyle(
                color:
                    hasError ? OriginColors.red700 : OriginColors.blueGray600,
              ),
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: OriginSpacing.xs),
              prefixIconConstraints: const BoxConstraints(
                maxHeight: 24,
                maxWidth: 40,
              ),
              prefixIcon: leadingIconPath != null
                  ? Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: OriginSpacing.xs,
                        end: OriginSpacing.xs,
                      ),
                      child: OriginIcon(
                        iconPath: leadingIconPath!,
                        colorFilter: hasError
                            ? const ColorFilter.mode(
                                Colors.red,
                                BlendMode.srcIn,
                              )
                            : null,
                      ),
                    )
                  : null,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: OriginColors.blueGray50),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: OriginColors.brandColorPrimary),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: OriginColors.red700),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: OriginColors.red700),
              ),
              errorText: errorText,
            ),
          ),
        ],
      ),
    );
  }
}
