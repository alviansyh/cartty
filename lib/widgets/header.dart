import 'package:flutter/material.dart';
import '../theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/asset1.png',
          width: 267,
          height: 200,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Upgrade to ',
              style: title1TextStyle,
            ),
            Text(
              'Pro',
              style: title2TextStyle,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Go unlock all features and \nbuild your own business bigger',
          style: subTitleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
