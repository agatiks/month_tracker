import 'package:flutter/cupertino.dart';
import 'package:month_tracker/models/habit_state.dart';

@immutable
class AppState {
  final List<HabitState> habits;
  const AppState({this.habits = const []});
}
