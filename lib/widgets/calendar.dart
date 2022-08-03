import 'package:flutter/cupertino.dart';
import 'package:month_tracker/models/habit_state.dart';
import 'package:month_tracker/widgets/days_of_week.dart';
import 'package:month_tracker/widgets/week_item.dart';

class Calendar extends StatelessWidget {
  final HabitState habit;

  const Calendar(this.habit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DaysOfWeek(habit.dateOfStart),
          Column(
              children: List.generate(habit.numberOfWeeks, (index) =>  WeekItem(habit.getWeek(index)))
          ),
        ],
      ),
    );
  }
}
