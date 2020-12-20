import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({
    Key key,
    @required this.size,
    this.title,
    this.info,
    this.progress,
    this.color,
  }) : super(key: key);

  final Size size;
  final String title, info;
  final int progress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: size.height * 0.25,
        width: size.width * 0.35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(36.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 75.0,
              lineWidth: 6.0,
              animation: true,
              percent: progress / 100,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.white,
              backgroundColor: Colors.grey.withOpacity(0.2),
              center: Text(
                "$progress%",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextSpan(
                    text: info,
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12.0,
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
