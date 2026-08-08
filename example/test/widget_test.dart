import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Example renders SDK widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const DemoApp());

    expect(find.text('OneUIX Example'), findsOneWidget);
    expect(find.text('Open Confirmation Dialog'), findsOneWidget);
    expect(find.text('Remember me'), findsOneWidget);
  });
}
