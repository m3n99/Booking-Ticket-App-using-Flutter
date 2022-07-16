import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/column_ticket_layout.dart';
import '../widgets/lauout_builder.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLines.copyWith(fontSize: 35),
              ),
              Gap(AppLayout.getHeight(15)),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                    right: AppLayout.getWidth(16)),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(16),
                    vertical: AppLayout.getHeight(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppColumnLayout(
                          first: "F_Maen DB",
                          second: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        const AppColumnLayout(
                          first: "8113 359506",
                          second: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderDash(
                      section: 15,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppColumnLayout(
                          first: "0056 869 80780",
                          second: "Number of Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        const AppColumnLayout(
                          first: "BD03RM9#",
                          second: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderDash(
                      section: 15,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 12,
                                ),
                                Text(
                                  " ****40240",
                                  style: Styles.headLines3
                                      .copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment method",
                              style: Styles.headLines4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          first: "\$299.99",
                          second: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              /*Bar Code */
              Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                  bottomRight: Radius.circular(AppLayout.getHeight(20)),
                  
                )),
                
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                margin: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                    right: AppLayout.getWidth(16)
                  ),
               
                
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(16)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/m3n99',
                      drawText: false,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
               Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
       
        Positioned(
          left: AppLayout.getHeight(15),
          top: AppLayout.getHeight(340),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black,width: 2),
            ),
            child:  CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(15),
          top: AppLayout.getHeight(340),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black,width: 2),
            ),
            child:  CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        ],
      ),
    );
  }
}
