import 'package:flutter/material.dart';
import 'package:origin_design_system/assets.dart';
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
    leadingIconPath: context.knobs.options(
      label: 'Icon',
      options: [
        const widgetbook.Option<String?>(
          label: 'With icon',
          value: Assets.assets_dollar_sign_svg,
        ),
        const widgetbook.Option<String?>(
          label: 'Without icon',
          value: null,
        ),
      ],
    ),
    errorText: context.knobs.options(
      label: 'Error text',
      options: [
        const widgetbook.Option<String?>(
          label: 'With error text',
          value: 'error text',
        ),
        const widgetbook.Option<String?>(
          label: 'Without error text',
          value: null,
        ),
      ],
    ),
  );
}
