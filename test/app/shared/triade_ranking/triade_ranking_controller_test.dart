import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:desafio_08022020/app/shared/triade_ranking/triade_ranking_controller.dart';
import 'package:desafio_08022020/app/app_module.dart';

void main() {
  initModule(AppModule());
  TriadeRankingController triaderanking;

  setUp(() {
    triaderanking = AppModule.to.get<TriadeRankingController>();
  });

  group('TriadeRankingController Test', () {
    test("First Test", () {
      expect(triaderanking, isInstanceOf<TriadeRankingController>());
    });

    test("Set Value", () {
      expect(triaderanking.value, equals(0));
      triaderanking.increment();
      expect(triaderanking.value, equals(1));
    });
  });
}
