import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../constants.dart';

class HeaderWithAvatar extends StatelessWidget {
  const HeaderWithAvatar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: LightColors.kDarkYellow,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularPercentIndicator(
                    radius: 90.0,
                    lineWidth: 5.0,
                    animation: true,
                    percent: 0.75,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: LightColors.kRed,
                    backgroundColor: LightColors.kDarkYellow,
                    center: CircleAvatar(
                      backgroundColor: LightColors.kBlue,
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        "assets/images/avatar.png",
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Ryszard Schossler\n",
                          style: TextStyle(
                            color: LightColors.kDarkBlue,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "App Developer",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
