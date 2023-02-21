import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/src/atoms/origin_icon.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin icon', (tester) async {
    await tester.pumpApp(
      const OriginIcon(
        iconPath: Assets.assets_dollar_sign_svg,
      ),
    );
    expect(find.byType(OriginIcon), findsOneWidget);
  });
}
