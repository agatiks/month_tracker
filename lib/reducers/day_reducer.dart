import 'package:month_tracker/actions/actions.dart';
import 'package:month_tracker/models/habit_state.dart';
import 'package:redux/redux.dart';

final dayReducer = combineReducers<List<HabitState>>([
  TypedReducer<List<HabitState>, CreateHabitAction>(_createHabit),
  TypedReducer<List<HabitState>, OneDayAction>(_changeOneDay)
]);

List<HabitState> _createHabit(List<HabitState> state,
    CreateHabitAction action) {
  return List.from(state)
    ..add(action.habit);
}

List<HabitState> _changeOneDay(List<HabitState> state,
    OneDayAction action) {
  return state
      .map((habit) {
    if (habit.id == action.id) {
      habit.changeDay(action.day);
    }
    return habit;
  }).toList();
}
