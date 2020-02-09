import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:desafio_08022020/app/shared/triade_ranking/triade_ranking.dart';

main() {
  testWidgets('TriadeRanking has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TriadeRanking()));
    final textFinder = find.text('TriadeRanking');
    expect(textFinder, findsOneWidget);
  });
}
