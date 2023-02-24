import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/origin_graph.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginGraph)
Widget originGraph(BuildContext context) {
  return OriginGraph(
    amount: context.knobs.options(
      label: 'Amount',
      options: [
        const widgetbook.Option<int>(
          label: '3',
          value: 3,
        ),
        const widgetbook.Option<int>(
          label: '5',
          value: 5,
        ),
      ],
    ),
    selectedAmount: context.knobs.options(
      label: 'Selected amount',
      options: [
        const widgetbook.Option<int>(
          label: '0',
          value: 0,
        ),
        const widgetbook.Option<int>(
          label: '1',
          value: 1,
        ),
        const widgetbook.Option<int>(
          label: '2',
          value: 2,
        ),
        const widgetbook.Option<int>(
          label: '3',
          value: 3,
        ),
      ],
    ),
  );
}
