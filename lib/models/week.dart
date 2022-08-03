import 'package:intl/intl.dart';

class Week {
  final DateTime startOfWeek;
  late DateTime endOfWeek; //todo: remove late
  final int numberOfWeek;
  final int length;
  List<bool> weekState;
  Week(this.startOfWeek, this.weekState, this.numberOfWeek, {this.length = 7}) {
    endOfWeek = startOfWeek.add(Duration(days: length - 1));
  }

  String getDates() {
    DateFormat format = DateFormat('dd MMM');
    return '${format.format(startOfWeek)} - ${format.format(endOfWeek)}';
  }
}