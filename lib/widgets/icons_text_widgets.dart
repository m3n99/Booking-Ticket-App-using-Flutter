import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData iconp;
  final String textp;
  const AppIconText({Key? key, required this.iconp, required this.textp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            iconp,
            color: Styles.flightIcons,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            textp,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
