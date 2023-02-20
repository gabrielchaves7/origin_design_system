import 'package:flutter/material.dart';

import 'package:origin_design_system/src/atoms/origin_logo.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginLogo)
Widget originLogo(BuildContext context) {
  return const OriginLogo();
}
