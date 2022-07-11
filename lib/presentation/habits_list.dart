import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/models/habit_state.dart';
import 'package:month_tracker/widgets/habit_item.dart';

import 'habit_screen.dart';

class HabitsList extends StatelessWidget {
  final List<HabitState> habits;

  const HabitsList({
    Key? key,
    required this.habits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DesignValues.regularPadding,
      child: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      key: const Key('listOfHabits'),

      itemCount: habits.length,
      itemBuilder: (BuildContext context, int index) {
        final habit = habits[index];

        return HabitItem(
          habit: habit,
          onTap: () => _onTap(context, habit),
        );
      },
    );
  }

  void _onTap(BuildContext context, HabitState habit) {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (_) => HabitScreen(habit),
    ));
  }
}