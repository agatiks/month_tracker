import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:month_tracker/models/app_state.dart';
import 'package:month_tracker/presentation/home_screen.dart';
import 'package:redux/redux.dart';

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;
  const ReduxApp(this.store, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(store: store,
        child: const MaterialApp(home: HomeScreen()),
    );
  }
  
}