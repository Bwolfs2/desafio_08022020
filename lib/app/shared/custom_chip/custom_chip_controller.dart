import 'package:mobx/mobx.dart';

part 'custom_chip_controller.g.dart';

class CustomChipController = _CustomChipBase with _$CustomChipController;

abstract class _CustomChipBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
