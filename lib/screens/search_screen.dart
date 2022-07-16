import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widgets.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/icons_text_widgets.dart';

class SearchScreen extends StatelessWidget {
 
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for ?",
              style:
                  Styles.headLines.copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Airline Tickets",secondTab: "Hotels"),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
              iconp: Icons.flight_takeoff_rounded,
              textp: "Departure",
            ),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(
              iconp: Icons.flight_land_rounded,
              textp: "Arrival",
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  color: Colors.blueAccent),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: const AppDoubleText(
                text: "Upcoming Flights",
                buttonT: "View all",
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Card with photo and text
                Container(
                  height: AppLayout.getHeight(410),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15),
                  ),
                  decoration: BoxDecoration(
                      color: Styles.searchS,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Column(children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg")),
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      "20% discount on the early booking of this flight.Save your money",
                      style: Styles.headLines2,
                    ),
                  ]),
                ),

                // Two Cards one with emojies
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.45,
                          height: AppLayout.getHeight(200),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(20)),
                          ),
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor survev",
                                  style: Styles.headLines2.copyWith(
                                    color: Colors.white,
                                  )),
                              Gap(AppLayout.getHeight(15)),
                              Text(
                                  "Take the survey about our services and get discount now ",
                                  style: Styles.headLines2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        // half circle in the blue_green card
                        Positioned(
                          right: -45,
                          top:-35,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent,
                            ),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      width: size.width *0.45,
                      height: AppLayout.getHeight(200),
                      padding: EdgeInsets.all(AppLayout.getHeight(15)),
                      decoration:   BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                        color: const Color(0xFFB00B69),
                      ),
                      child: Column(
                        children: [
                          Text("Take Love",style: Styles.headLines2.copyWith(color: Colors.white,),textAlign: TextAlign.center,),
                          Gap(AppLayout.getHeight(10)),
                          RichText(text: 
                          const TextSpan(children: [
                            TextSpan(
                              text: '💙',style: TextStyle(fontSize: 35), 
                            ),
                             TextSpan(
                              text: '🖤',style: TextStyle(fontSize: 40), 
                            ),
                             TextSpan(
                              text: '❤',style: TextStyle(fontSize: 35), 
                            ),
                          ])),
                        ],
                      ),
                    ),
                  ],
                ) 
              ],
            )
          ]),
    );
  }
}
