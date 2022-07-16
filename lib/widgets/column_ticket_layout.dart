import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String first;
  final String second;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.first,
      required this.second,
      required this.alignment,
      required this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          first,
          style: Styles.headLines3
              .copyWith(color: isColor == null ? Colors.white : Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          second,
          style: isColor == null
              ? Styles.headLines4.copyWith(color: Colors.white)
              : Styles.headLines4,
        ),
      ],
    );
  }
}
