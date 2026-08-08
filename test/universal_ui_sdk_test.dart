import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:oneuix/oneuix.dart';

void main() {
  testWidgets('renders a primary button and handles tap', (tester) async {
    var tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: UixApp(
          child: Scaffold(
            body: UixButton(
              label: 'Continue',
              onPressed: () => tapped = true,
            ),
          ),
        ),
      ),
    );

    expect(find.text('Continue'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    expect(tapped, isTrue);
  });
}
