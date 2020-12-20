import 'package:flutter/material.dart';
import 'package:task_planner/screens/home/components/progress_chart.dart';
import 'package:task_planner/screens/home/components/title_and_icons.dart';
import 'header_with_avatar.dart';
import 'icon_and_double_text.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithAvatar(size: size),
          TitleWithButton(
            text: "My Tasks",
            icon: Icons.calendar_today_rounded,
          ),
          IconAndDoubleText(
            task: "To Do",
            info: "5 tasks now, 1 started",
            icon: Icons.alarm,
            color: Colors.red[400],
          ),
          IconAndDoubleText(
            task: "In Progress",
            info: "1 tasks now, 1 started",
            icon: Icons.short_text,
            color: Colors.amber[400],
          ),
          IconAndDoubleText(
            task: "Done",
            info: "18 tasks now, 13 started",
            icon: Icons.done,
            color: Colors.green[400],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TitleWithCustomUnderLine(text: "Activite Projects"),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProgressChart(
                    size: size,
                    title: "Medical App",
                    info: "9 hours progress",
                    progress: 25,
                    color: Colors.green[400],
                  ),
                  ProgressChart(
                    size: size,
                    title: "Tank App",
                    info: "24 hours progress",
                    progress: 60,
                    color: Colors.amber[400],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProgressChart(
                    size: size,
                    title: "Weather",
                    info: "1 hours progress",
                    progress: 5,
                    color: Colors.red[400],
                  ),
                  ProgressChart(
                    size: size,
                    title: "Netflix Clone",
                    info: "36 hours progress",
                    progress: 88,
                    color: Colors.blue[400],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
