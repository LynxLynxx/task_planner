import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconAndDoubleText extends StatelessWidget {
  const IconAndDoubleText({
    Key key,
    this.task,
    this.info,
    this.icon,
    this.color,
  }) : super(key: key);
  final String task, info;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
        child: Row(
          children: [
            RawMaterialButton(
              onPressed: () {},
              elevation: 0.5,
              fillColor: color,
              shape: CircleBorder(),
              child: Icon(
                icon,
                size: 25.0,
              ),
              padding: EdgeInsets.all(10.0),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$task\n",
                    style: TextStyle(
                      color: LightColors.kDarkBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: info,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
