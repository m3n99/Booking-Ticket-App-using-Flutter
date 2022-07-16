import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  final String text;
  final String buttonT;
  const AppDoubleText({Key? key, required this.text, required this.buttonT})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.headLines2),
        InkWell(onTap: () {}, child: Text(buttonT, style: Styles.textStyle)),
      ],
    );
  }
}
