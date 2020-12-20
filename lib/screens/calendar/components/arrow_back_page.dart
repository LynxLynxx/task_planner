import 'package:flutter/material.dart';

import '../../../constants.dart';

class ArrowBackPage extends StatelessWidget {
  const ArrowBackPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
