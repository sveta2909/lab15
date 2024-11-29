import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  testWidgets('AppBar title matches group and name', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('KN-32: Svitlana last Flutter App'), findsOneWidget);
  });

  testWidgets('FloatingActionButton with correct icon', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byIcon(Icons.person), findsOneWidget);
  });

  testWidgets('Counter increments correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Displays "undefined" for invalid x values', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    for (int i = 0; i < 3; i++) {
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
    }

    expect(find.text('undefined'), findsOneWidget);
  });
}
