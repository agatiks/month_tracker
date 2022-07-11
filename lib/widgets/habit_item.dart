import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/models/habit_state.dart';

class HabitItem extends StatelessWidget {
  final HabitState habit;
  final double radius;
  final GestureTapCallback? onTap;

  const HabitItem({required this.habit, this.onTap, Key? key, this.radius = DesignValues.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: habit.category.color,
          borderRadius: BorderRadius.circular(radius),
        ),
        padding: DesignValues.regularPadding,
        child: ListTile(
          title: Text(
            habit.nameOfHabit,
            style: DesignValues.header2,
          ),
          subtitle: Text(
            habit.getDates(),
            style: DesignValues.body1,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
