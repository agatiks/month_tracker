import 'package:month_tracker/models/app_state.dart';
import 'package:month_tracker/models/category.dart';
import 'package:intl/intl.dart';
import 'package:month_tracker/models/week.dart';
import 'package:flutter/cupertino.dart';

class HabitState {
  int id;
  late int numberOfWeeks;
  String nameOfHabit;
  DateTime dateOfStart;
  late DateTime dateOfEnd; //todo: late?
  Category category;
  List<bool> daysState = []; //todo: constructor doesn't work correct wo init
  int length;

  HabitState(this.id, this.nameOfHabit, this.dateOfStart, this.length, this.category) {
    daysState = List.filled(length, false);
    dateOfEnd = dateOfStart.add(Duration(days: length));
    numberOfWeeks = (length / 7).round();
  }

  changeDay(int day){
    daysState[day] = !daysState[day];
  }

  String getDates() {
    const Locale loc = Locale('fr', 'CH');
    String startM = DateFormat('MMM').format(dateOfStart);
    int startY = dateOfStart.year;
    String endM = DateFormat('MMM').format(dateOfEnd);
    int endY = dateOfEnd.year;
    if(startY == endY) {
      if (startM == endM) {
        return '$startM $startY';
      }
      return '$startM - $endM $endY';
    } else {
      return '$startM $startY - $endM $endY';
    }
  }

  Week getWeek(int index) {
    int start = 7 * index;
    DateTime weekStart = dateOfStart.add(Duration(days: start));
    if(index == numberOfWeeks - 1 && length % 7 != 0) {
      int l = length % 7;
      return Week(weekStart, daysState.getRange(start, start + l).toList(), index, length: l);
    }
    return Week(weekStart, daysState.getRange(start, start + 7).toList(), index);
  }
}