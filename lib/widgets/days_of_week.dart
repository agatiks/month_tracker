import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:month_tracker/design_values.dart';

class DaysOfWeek extends StatelessWidget {
  final DateTime dateOfStart;

  const DaysOfWeek(this.dateOfStart, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Text(
            DateFormat('EE').format(dateOfStart.add(Duration(days: index))),
            style: DesignValues.body1,
          );
        },
    );
  }
}