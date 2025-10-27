import 'package:flutter_test/flutter_test.dart';
import 'package:catch_anything/src/domain/uogs.dart';

void main() {
  test('UOGS.calculateStats returns the same stats for the same input', () {
    final stats1 = UOGS.calculateStats('test');
    final stats2 = UOGS.calculateStats('test');
    expect(stats1, equals(stats2));
  });

  test('UOGS.calculateStats returns different stats for different inputs', () {
    final stats1 = UOGS.calculateStats('test1');
    final stats2 = UOGS.calculateStats('test2');
    expect(stats1, isNot(equals(stats2)));
  });
}
