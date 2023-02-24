import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginOutlinedButton)
Widget originOutlinedButton(BuildContext context) {
  return OriginOutlinedButton(
    onPressed: () {},
    buttonType: context.knobs.options(
      label: 'Type',
      options: [
        const widgetbook.Option<OriginOutlinedButtonType>(
          label: 'Primary',
          value: OriginOutlinedButtonType.primary,
        ),
        const widgetbook.Option<OriginOutlinedButtonType>(
          label: 'Secondary',
          value: OriginOutlinedButtonType.secondary,
        ),
      ],
    ),
    child: const Text('Continue'),
  );
}
