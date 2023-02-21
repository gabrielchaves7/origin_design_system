import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginOutlinedButton)
Widget originOutlinedButton(BuildContext context) {
  return OriginOutlinedButton(
    onPressed: () {},
    child: const Text('Continue'),
  );
}
