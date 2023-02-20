import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/logo.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: Logo)
Widget originIcon(BuildContext context) {
  return Logo(
    size: context.knobs.options(
      label: 'Size',
      options: [
        const widgetbook.Option<LogoSize>(
          label: 'Small',
          value: LogoSize.small,
        ),
        const widgetbook.Option<LogoSize>(
          label: 'Medium',
          value: LogoSize.medium,
        ),
        const widgetbook.Option<LogoSize>(
          label: 'Large',
          value: LogoSize.large,
        ),
      ],
    ),
    shape: context.knobs.options(
      label: 'Shape',
      options: [
        const widgetbook.Option<LogoShape>(
          label: 'Circle',
          value: LogoShape.circle,
        ),
      ],
    ),
  );
}
