import 'package:flutter/material.dart';

import 'package:origin_design_system/src/molecules/origin_app_bar.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginAppBar)
Widget originAppBar(BuildContext context) {
  return Scaffold(
    appBar: const OriginAppBar().build(context),
    body: const SizedBox(),
  );
}
