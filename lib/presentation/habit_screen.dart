import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/models/habit_state.dart';
import 'package:month_tracker/widgets/habit_item.dart';
import 'package:month_tracker/widgets/Calendar.dart';

class HabitScreen extends StatelessWidget {
  final HabitState habit;
  HabitScreen(this.habit, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: DesignValues.regularPadding,
          child: Column(
            children: [
              HabitItem(habit: habit),
              const SizedBox(height: DesignValues.paddingSmall),
              //Calendar(habit),
            ],
          ),
        ),
    );
  }

}