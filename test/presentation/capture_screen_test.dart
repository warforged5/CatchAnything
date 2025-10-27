import 'package:catch_anything/src/presentation/screens/capture_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CaptureScreen has a title and a button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: CaptureScreen()));

    expect(find.text('Capture Creature'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
