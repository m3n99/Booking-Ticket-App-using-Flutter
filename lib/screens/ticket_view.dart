import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/circular_container.dart';
import 'package:booktickets/widgets/column_ticket_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket,  this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      // we could use a contanier too
      width: size.width * 0.85, // depends on the screen of phone will change
      height: AppLayout.getHeight(
          GetPlatform.isAndroid==true?176:169), // we will use a fixed height  since using size.height it will take a lot of sapeces

      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /* show the blue part of the Ticket (card)*/

            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.blueNColor : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(20)),
                    topRight: Radius.circular(AppLayout.getHeight(20))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLines3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLines3.copyWith(color: Colors.black),
                      ), // copy with make an overwrite
                      const Spacer(),
                      const CircularContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: isColor == null
                                                      ? Colors.white
                                                      : Colors.grey.shade500,
                                                ),
                                              ),
                                            )));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ],
                      )),
                      // 1.5 = 90 dgree
                      const CircularContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLines3.copyWith(color: Colors.white)
                            : Styles.headLines3.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          textAlign: TextAlign.start,
                          style: isColor == null
                              ? Styles.headLines4.copyWith(color: Colors.white)
                              : Styles.headLines4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLines4.copyWith(color: Colors.white)
                            : Styles.headLines4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLines4.copyWith(color: Colors.white)
                              : Styles.headLines4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            /** show the  orange part of the Ticket (Card) */
            Container(
              color: isColor == null ? Styles.orangeCard : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(20)),
                          bottomRight:
                              Radius.circular(AppLayout.getHeight(20))),
                      color: Colors.white,
                    )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade600,
                                          ),
                                        ),
                                      )));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10))),
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),

            /* bottom part of ticket continue in the orange part after the dashes */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeCard : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?20:0)),
                    bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?20:0))),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16),
                  right: AppLayout.getWidth(16),
                  top: AppLayout.getHeight(10),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(first: ticket['date'], second: "Date", alignment: CrossAxisAlignment.start,isColor: isColor,),
                      AppColumnLayout(first:  ticket['departure_time'], second: "Departure time", alignment: CrossAxisAlignment.center,isColor: isColor,),
                      AppColumnLayout(first:  ticket['number'].toString(), second: "Number",alignment: CrossAxisAlignment.end,isColor: isColor,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
