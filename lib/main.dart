import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_planner/constants.dart';
import 'package:task_planner/models/user.dart';
import 'package:task_planner/screens/wrapper.dart';
import 'package:task_planner/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Planner',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: LightColors.kDarkBlue,
              displayColor: LightColors.kDarkBlue,
              fontFamily: 'Poppins'),
        ),
        home: Wrapper(),
      ),
    );
  }
}
