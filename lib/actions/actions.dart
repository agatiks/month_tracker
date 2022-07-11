import '../models/habit_state.dart';

class CreateHabitAction {
  final HabitState habit;

  CreateHabitAction(this.habit);
}

class OneDayAction {
  final int id;
  final int day;

  OneDayAction(this.id, this.day);
}