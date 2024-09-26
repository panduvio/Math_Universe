import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/competition_model.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/screen/try_out_screen.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int kategoriIndex = 0;
  int pageIndex = 0;
  List<CompetitionEntity> _competitionList = competitionList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            height: 225,
            color: AppColor().yueGuangLanMoonlight,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 52,
                      child: Image.asset(
                        'assets/math_universe_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor().coldSnow,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Here',
                          suffixIcon: HeroIcon(HeroIcons.magnifyingGlass),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      child: HeroIcon(HeroIcons.user),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Study Hard!!',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColor().coldSnow,
                          ),
                        ),
                        Text(
                          'Pandu Violana Mulya',
                          style: TextStyle(color: AppColor().coldSnow),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 16,
                      child: HeroIcon(HeroIcons.bell),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 28),
            height: 340,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    HeroIcon(
                      HeroIcons.bars3,
                      size: 28,
                      style: HeroIconStyle.solid,
                      color: AppColor().yueGuangLanMoonlight,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 114,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 1;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(5);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 1
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/video_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Video'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 2;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(4);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 2
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/question_bank_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Question\nBank',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 3;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(2);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 3
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/modul_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Modul'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 4;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(7);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 4
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/rank_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Rank'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 114,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 5;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(6);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 5
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/certificate_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Certificate'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 6;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(8);
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 6
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/discussion_room_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Discussion\nRoom',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 7;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TryOutScreen(),
                                    ));
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 7
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/tryout_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Try Out'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                kategoriIndex = 8;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                kategoriIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: kategoriIndex == 8
                                  ? AppColor().capeJasmine
                                  : AppColor().yueGuangLanMoonlight,
                              child: Image.asset(
                                'assets/activity_icon.png',
                                width: 54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Activity'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            // padding: EdgeInsets.symmetric(vertical: 28),
            height: 340,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 42,
                    ),
                    const Text(
                      'Competition Information',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        // setState(() {
                        //   Provider.of<PageProvider>(context, listen: false)
                        //       .changeIndex(1);
                        // });
                      },
                      child: HeroIcon(
                        HeroIcons.bars3,
                        size: 28,
                        style: HeroIconStyle.solid,
                        color: AppColor().yueGuangLanMoonlight,
                      ),
                    ),
                    const SizedBox(
                      width: 42,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor().black,
                      ),
                      child: Image.asset(
                        _competitionList[index].image,
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.3,
                    height: 140,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
