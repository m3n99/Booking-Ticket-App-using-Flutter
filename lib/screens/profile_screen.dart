import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_ticket_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/lauout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(80),
                width: AppLayout.getWidth(80),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                    )),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Booking Tickets",
                    style: Styles.headLines,
                  ),
                  Gap(AppLayout.getWidth(5)),
                  Text("Jerusalem",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getWidth(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFffef4f3),
                    ),
                    padding: EdgeInsets.all(AppLayout.getWidth(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () => {},
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: const Color.fromARGB(255, 96, 160, 164),
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(15)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 146, 180),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: AppLayout.getWidth(20),
                        color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(24),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Color.fromARGB(255, 105, 146, 180),
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style:
                              Styles.headLines2.copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(3)),
                        Text(
                          "You'v 96 flights in a year",
                          style: Styles.textStyle
                              .copyWith(color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Styles.headLines2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            margin: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 2,
                    spreadRadius: 5),
              ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                const Text(
                  "193475",
                  style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 129, 6, 76),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLines4,
                    ),
                    Text(
                      "30 March 2022",
                      style: Styles.headLines4,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                Divider(
                  color: Colors.grey.shade400,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        first: "24 069",
                        second: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    AppColumnLayout(
                        first: "Airlines CO",
                        second: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                const AppLayoutBuilderDash(
                  section: 15,
                  isColor: true,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        first: "90 368",
                        second: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    AppColumnLayout(
                        first: "Turkish Airlines",
                        second: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                const AppLayoutBuilderDash(
                  section: 15,
                  isColor: true,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        first: "90 368",
                        second: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    AppColumnLayout(
                        first: "Emirates Airlines",
                        second: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          InkWell(
              onTap: () => {},
              child: Center(
                  child: Text(
                "How to get more miles",
                style: Styles.textStyle
                    .copyWith(color: const Color.fromARGB(255, 96, 160, 164)),
              ))),
        ],
      ),
    );
  }
}
