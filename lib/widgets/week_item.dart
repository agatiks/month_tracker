import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/widgets/circle_checkbox.dart';

import '../models/week.dart';

class WeekItem extends StatelessWidget {
  final Week week;

  const WeekItem(this.week, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text(
          week.getDates(),
          style: DesignValues.body2,
        ),
          ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
                itemCount: week.length,
                itemBuilder: (BuildContext context, int index) {
                print(week.length);
                  return CircleCheckbox(isChecked: week.week[index]);
                }),

      ],
    );
  }
}
