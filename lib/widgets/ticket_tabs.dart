import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(4)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Styles.searchS,
        ),
        child: Row(
          children: [
            /*Airline Tickets*/
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            /*Hotels */
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.grey.shade100,
              ),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
