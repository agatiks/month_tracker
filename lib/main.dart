import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:month_tracker/app.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/reducers/app_reducer.dart';
import 'package:redux/redux.dart';

import 'models/app_state.dart';
import 'models/category.dart';
import 'models/habit_state.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ReduxApp(
    Store<AppState>(
      appReducer,
      initialState: AppState(
        habits: [
          HabitState(
            0,
            'Pills',
            DateTime.now(),
            20,
            Category("Health", DesignValues.mainColor),
          ),
        ],
      ),
    ),
  ));
}
