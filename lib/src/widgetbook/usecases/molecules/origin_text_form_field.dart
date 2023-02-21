import 'package:flutter/material.dart';
import 'package:origin_design_system/src/molecules/origin_text_form_field.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginTextField)
Widget originTextField(BuildContext context) {
  return OriginTextField(
    label: context.knobs.options(
      label: 'Label',
      options: [
        const widgetbook.Option<String>(
          label: 'Label example',
          value: 'Here is a label',
        ),
      ],
    ),
    icon: context.knobs.options(
      label: 'Icon',
      options: [
        const widgetbook.Option<Widget?>(
          label: 'With icon',
          value: Icon(Icons.money),
        ),
        const widgetbook.Option<Widget?>(
          label: 'Without icon',
          value: null,
        ),
      ],
    ),
  );
}
