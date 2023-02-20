import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin app bar', (tester) async {
    await tester.pumpApp(const OriginAppBar());
    expect(find.byType(OriginAppBar), findsOneWidget);
  });
}
