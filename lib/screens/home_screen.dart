import 'package:booktickets/screens/hotels_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcom to Book Tickets App",
                        style: Styles.headLines3),
                    const Gap(5),
                    Text(
                      " Book Tickets ",
                      style: Styles.headLines,
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img_1.png")),
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color.fromARGB(255, 177, 177, 143),
                    ),
                    Gap(AppLayout.getHeight(3)),
                    Text(
                      "Search",
                      style: Styles.headLines4,
                    ),
                  ],
                )),
            Gap(AppLayout.getHeight(25)),
            const AppDoubleText(
              text: "Upcoming Flights",
              buttonT: "View all",
            ),
          ]),
        ),
        Gap(AppLayout.getHeight(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
              children: ticketList
                  .map((sticket) => TicketView(
                        ticket: sticket,
                        isColor: null,
                      ))
                  .toList()),
        ),
        Gap(AppLayout.getHeight(10)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const AppDoubleText(
            text: "Hotels",
            buttonT: "View all",
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
              children: hotelList
                  .map((shotel) => HotelsScreen(hotel: shotel))
                  .toList() // Shotel this the parameter we will pass, hotel: must be the same as what we named in hotels_screen file

              ),
        ),
      ]),
    );
  }
}
