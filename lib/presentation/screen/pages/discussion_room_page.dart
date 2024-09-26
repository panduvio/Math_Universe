import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class DiscussionRoomPage extends StatefulWidget {
  const DiscussionRoomPage({super.key});

  @override
  State<DiscussionRoomPage> createState() => _DiscussionRoomPageState();
}

class _DiscussionRoomPageState extends State<DiscussionRoomPage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Provider.of<PageProvider>(context, listen: false)
                        .changeIndex(0);
                  });
                },
                borderRadius: BorderRadius.circular(8),
                child: HeroIcon(
                  HeroIcons.chevronLeft,
                  style: HeroIconStyle.solid,
                  color: AppColor().coldSnow,
                ),
              ),
            ),
            backgroundColor: AppColor().yueGuangLanMoonlight,
            centerTitle: true,
            title: Text(
              'Discussion Room',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 42),
              children: [
                Container(
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 52,
                      ),
                      Row(
                        children: [
                          HeroIcon(HeroIcons.userCircle),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Nadya Comannici | 5 hours',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Probability',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                isTapped = true;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                isTapped = false;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(9);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                isTapped = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor().yueGuangLanMoonlight,
                                    style: BorderStyle.solid,
                                    width: 1),
                                color: isTapped
                                    ? AppColor().yueGuangLanMoonlight
                                    : AppColor().coldSnow,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'View Feedback',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: !isTapped
                                            ? AppColor().yueGuangLanMoonlight
                                            : AppColor().coldSnow),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  HeroIcon(
                                    HeroIcons.arrowRight,
                                    color: !isTapped
                                        ? AppColor().yueGuangLanMoonlight
                                        : AppColor().coldSnow,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 270,
                  child: Column(
                    children: [
                      Text(
                        'A die is thrown once, what is the probability of getting a 5 on the die? Please help answer, thank you...',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 140,
                        color: AppColor().capeJasmine,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    HeroIcon(HeroIcons.userCircle),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pandu Violana Mulya | 5 minutes',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    'Hello, Nadya. Permission to answer...\n\nSo, we need to determine the number of sample points first. So, the point until a dice is 6, or we can denote it as n(s) = 6.\n\nNext, we determine the sample point on the dice which has a value of 5, which is 1 or we can denote it as n(A) = 1.\n\nIn accordance with the probability formula, namely, P(A) = n(A)/n(S) = 1/ 6.\nSo, the probability of getting a 5 on the die is 1/6.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
