import 'package:flutter/material.dart';
import 'package:task_planner/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: LightColors.kDarkYellow,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.menu,
          color: LightColors.kDarkBlue,
          size: 25.0,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.search,
            color: LightColors.kDarkBlue,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
