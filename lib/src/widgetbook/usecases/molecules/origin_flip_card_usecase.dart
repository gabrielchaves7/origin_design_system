import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginFlipCard)
Widget originFlipCard(BuildContext context) {
  final controller = FlipCardController();
  return OriginFlipCard(
    flipOnTouch: true,
    back: OriginCard(child: Container(color: OriginColors.brandColorPrimary)),
    controller: controller,
    front: OriginCard(
        child: Container(color: OriginColors.brandColorPrimaryLight)),
  );
}
