import 'package:intl/intl.dart';

class Week {
  DateTime startOfWeek;
  late DateTime endOfWeek; //todo: remove late
  int length;
  List<bool> week;
  Week(this.startOfWeek, this.week, {this.length = 7}) {
    endOfWeek = startOfWeek.add(Duration(days: length));
  }

  String getDates() {
    DateFormat format = DateFormat('dd MMM');
    return '${format.format(startOfWeek)} - ${format.format(endOfWeek)}';
  }
}