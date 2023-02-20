import 'package:flutter/material.dart';

import 'package:origin_design_system/src/organisms/origin_page.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginPage)
Widget originPage(BuildContext context) {
  return OriginPage(
    body: SizedBox(),
  );
}
