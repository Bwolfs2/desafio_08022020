import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:desafio_08022020/app/shared/custom_chip/custom_chip_controller.dart';
import 'package:desafio_08022020/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomChipController customchip;

  setUp(() {
    customchip = AppModule.to.get<CustomChipController>();
  });

  group('CustomChipController Test', () {
    test("First Test", () {
      expect(customchip, isInstanceOf<CustomChipController>());
    });

    test("Set Value", () {
      expect(customchip.value, equals(0));
      customchip.increment();
      expect(customchip.value, equals(1));
    });
  });
}
