import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/origin_design_system.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin graph', (tester) async {
    await tester.pumpApp(
      const OriginGraph(
        amount: 3,
        selectedAmount: 3,
      ),
    );
    expect(find.byType(OriginGraph), findsOneWidget);
  });
}
