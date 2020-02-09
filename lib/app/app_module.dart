import 'package:desafio_08022020/app/shared/triade_ranking/triade_ranking_controller.dart';
import 'package:desafio_08022020/app/shared/custom_chip/custom_chip_controller.dart';
import 'package:desafio_08022020/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:desafio_08022020/app/app_widget.dart';
import 'package:desafio_08022020/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TriadeRankingController()),
        Bind((i) => CustomChipController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
