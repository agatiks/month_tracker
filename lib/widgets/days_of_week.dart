import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_tracker/design_values.dart';

class DaysOfWeek extends StatelessWidget {
  final DateTime dateOfStart;

  const DaysOfWeek(this.dateOfStart, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dates = List.generate(7, (index) => DateFormat('EE').format(dateOfStart.add(Duration(days: index))));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: dates.map((day) => Text(day, style: DesignValues.body1,)).toList(),
    );
  }
}