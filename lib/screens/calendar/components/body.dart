import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:task_planner/constants.dart';
import 'package:task_planner/screens/calendar/components/text_and_custom_button.dart';

import 'arrow_back_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.035,
        ),
        ArrowBackPage(),
        TextAndCustomButton(),
        CalendarWidget(),
      ],
    );
  }
}

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _controller,
      headerStyle: HeaderStyle(
        formatButtonShowsNext: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
    );
  }
}
