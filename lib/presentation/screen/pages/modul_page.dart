import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class ModulPage extends StatefulWidget {
  const ModulPage({super.key});

  @override
  State<ModulPage> createState() => _ModulPageState();
}

class _ModulPageState extends State<ModulPage> {
  int modulSubjectIndex = 0;

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
              'Modul',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: const EdgeInsets.all(28),
                  height: 100,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    height: 42,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor().bleachedSilk,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: HeroIcon(
                          HeroIcons.magnifyingGlass,
                          size: 24,
                          style: HeroIconStyle.solid,
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search Here',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 100,
                  child: Image.asset(
                    'assets/modul_title.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 144,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 103,
                                width: 144,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: modulSubjectIndex == 1
                                      ? AppColor().capeJasmine
                                      : AppColor().yueGuangLanMoonlight,
                                ),
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24)),
                            child: Image.asset(
                              'assets/modul_image_1.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Baris & Deret',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: modulSubjectIndex == 1
                                    ? AppColor().yueGuangLanMoonlight
                                    : AppColor().coldSnow,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                modulSubjectIndex = 1;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                modulSubjectIndex = 0;
                                Provider.of<PageProvider>(context,
                                        listen: false)
                                    .changeIndex(3);
                              });
                            },
                            onPanCancel: () {
                              setState(() {
                                modulSubjectIndex = 0;
                              });
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 130,
                                width: double.maxFinite,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 144,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 103,
                                width: 144,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: modulSubjectIndex == 2
                                      ? AppColor().capeJasmine
                                      : AppColor().yueGuangLanMoonlight,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Image.asset(
                                  'assets/modul_image_2.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Pertidaksamaan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: modulSubjectIndex == 2
                                    ? AppColor().yueGuangLanMoonlight
                                    : AppColor().coldSnow,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                modulSubjectIndex = 2;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                modulSubjectIndex = 0;
                              });
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 130,
                                width: double.maxFinite,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 144,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 103,
                                width: 144,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: modulSubjectIndex == 3
                                      ? AppColor().capeJasmine
                                      : AppColor().yueGuangLanMoonlight,
                                ),
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24)),
                            child: Image.asset(
                              'assets/modul_image_3.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Keterbagian',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: modulSubjectIndex == 3
                                    ? AppColor().yueGuangLanMoonlight
                                    : AppColor().coldSnow,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                modulSubjectIndex = 3;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                modulSubjectIndex = 0;
                              });
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 130,
                                width: double.maxFinite,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 144,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 103,
                                width: 144,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: modulSubjectIndex == 4
                                      ? AppColor().capeJasmine
                                      : AppColor().yueGuangLanMoonlight,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Image.asset(
                                  'assets/modul_image_4.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Bangun Ruang',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: modulSubjectIndex == 4
                                    ? AppColor().yueGuangLanMoonlight
                                    : AppColor().coldSnow,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapDown: (details) {
                              setState(() {
                                modulSubjectIndex = 4;
                              });
                            },
                            onTapUp: (details) {
                              setState(() {
                                modulSubjectIndex = 0;
                              });
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 130,
                                width: double.maxFinite,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
