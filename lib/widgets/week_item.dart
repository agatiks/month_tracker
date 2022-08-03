import 'dart:math';

import 'package:collection/collection.dart';
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
        const SizedBox(height: DesignValues.paddingSmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.weekState
              .map((dayState) => CircleCheckbox(
                    isChecked: dayState,
                    onTap: () {
                      print("${week.length}");
                    },
                  ))
              .toList() + List.generate(7 - week.length, (index) => const CircleCheckbox(isEmpty: true,)),
        ),
        const SizedBox(height: DesignValues.paddingSmall),
      ],
    );
  }
}
