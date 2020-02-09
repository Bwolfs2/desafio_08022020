import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_08022020/app/shared/custom_chip/custom_chip_widget.dart';

main() {
  testWidgets('CustomChipWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomChipWidget()));
    final textFinder = find.text('CustomChip');
    expect(textFinder, findsOneWidget);
  });
}
