import 'package:catch_anything/src/presentation/screens/battle_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BattleScreen has a title and a button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: BattleScreen()));

    expect(find.text('Battle'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
