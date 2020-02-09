import 'package:desafio_08022020/app/modules/home/repositories/home_repository.dart';
import 'package:desafio_08022020/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_08022020/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository()),
        Bind((i) => HomeController(i.get<HomeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
