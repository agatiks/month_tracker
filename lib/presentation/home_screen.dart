import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../containers/habits.dart';
import 'habits_list.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Habits());
  }
}