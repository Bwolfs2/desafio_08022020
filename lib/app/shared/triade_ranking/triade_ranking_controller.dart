import 'package:mobx/mobx.dart';

part 'triade_ranking_controller.g.dart';

class TriadeRankingController = _TriadeRankingBase
    with _$TriadeRankingController;

abstract class _TriadeRankingBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
