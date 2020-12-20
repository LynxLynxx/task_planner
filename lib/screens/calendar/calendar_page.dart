import 'package:task_planner/constants.dart';
import 'package:task_planner/screens/calendar/components/body.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: Body(),
    );
  }
}
