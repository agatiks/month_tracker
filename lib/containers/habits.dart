import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:month_tracker/models/app_state.dart';
import 'package:month_tracker/models/habit_state.dart';

import '../presentation/habits_list.dart';

class Habits extends StatelessWidget {
  const Habits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return HabitsList(
          habits: vm.habits,
        );
      },
    );
  }
}

class _ViewModel {
  final List<HabitState> habits;

  _ViewModel({
    required this.habits,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      habits: store.state.habits,
    );
  }
}