import '../models/app_state.dart';
import 'day_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    habits: dayReducer(state.habits, action),
  );
}