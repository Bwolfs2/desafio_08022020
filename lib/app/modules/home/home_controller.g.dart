// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$selectedIndexAtom = Atom(name: '_HomeBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.context.enforceReadPolicy(_$selectedIndexAtom);
    _$selectedIndexAtom.reportObserved();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.context.conditionallyRunInAction(() {
      super.selectedIndex = value;
      _$selectedIndexAtom.reportChanged();
    }, _$selectedIndexAtom, name: '${_$selectedIndexAtom.name}_set');
  }

  final _$listaUsuarisoAtom = Atom(name: '_HomeBase.listaUsuariso');

  @override
  List<UsuarioModel> get listaUsuariso {
    _$listaUsuarisoAtom.context.enforceReadPolicy(_$listaUsuarisoAtom);
    _$listaUsuarisoAtom.reportObserved();
    return super.listaUsuariso;
  }

  @override
  set listaUsuariso(List<UsuarioModel> value) {
    _$listaUsuarisoAtom.context.conditionallyRunInAction(() {
      super.listaUsuariso = value;
      _$listaUsuarisoAtom.reportChanged();
    }, _$listaUsuarisoAtom, name: '${_$listaUsuarisoAtom.name}_set');
  }

  final _$fillDataAsyncAction = AsyncAction('fillData');

  @override
  Future<dynamic> fillData(int i) {
    return _$fillDataAsyncAction.run(() => super.fillData(i));
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void changeIndex(int index) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.changeIndex(index);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
