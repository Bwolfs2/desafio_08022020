import 'dart:convert';

import 'package:desafio_08022020/app/modules/models/usuario_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class HomeRepository extends Disposable {
  Future<List<UsuarioModel>> getUsuarios(Dio client) async {
    final response = await client.get(
        'https://raw.githubusercontent.com/Bwolfs2/data/master/desafio_08_02_2020');
    return UsuarioModel.fromJsonList(json.decode(response.data) as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
