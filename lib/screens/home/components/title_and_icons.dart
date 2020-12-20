import 'package:flutter/material.dart';
import 'package:task_planner/screens/calendar/calendar_page.dart';

import '../../../constants.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            TitleWithCustomUnderLine(
              text: text,
            ),
            Spacer(),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
              elevation: 2.0,
              fillColor: LightColors.kGreen,
              shape: CircleBorder(),
              child: Icon(
                icon,
                size: 25.0,
              ),
              padding: EdgeInsets.all(15.0),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: kDefaultPadding / 5),
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: LightColors.kDarkYellow.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
