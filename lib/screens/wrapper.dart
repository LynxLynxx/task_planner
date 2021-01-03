import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_planner/models/user.dart';
import 'package:task_planner/screens/authenticate/authenticate.dart';
import 'package:task_planner/screens/home/home_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
