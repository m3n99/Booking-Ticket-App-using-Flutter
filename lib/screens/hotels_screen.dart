import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.blueNColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryC,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['place'],
            style: Styles.headLines2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['destination'],
            style: Styles.headLines3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLines.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
