import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/try_out_entity.dart';

class TryOutScreen extends StatefulWidget {
  const TryOutScreen({super.key});

  @override
  State<TryOutScreen> createState() => _TryOutScreenState();
}

class _TryOutScreenState extends State<TryOutScreen> {
  bool isPrevious = false;
  bool isNext = false;
  final _tryOutList = tryOutList;
  List<String> choices = [
    'A',
    'B',
    'C',
    'D',
    'E',
  ];
  int isChoosenChoice = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
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
          'Try Out',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColor().coldSnow),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 31),
            child: Text(
              'The number of eight-digit numbers in which each digit is a 1 or 2 but does not contain three consecutive 1s is . . .',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 42),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      isChoosenChoice = index;
                    });
                  },
                  child: Container(
                    height: 45,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: isChoosenChoice == index
                              ? AppColor().capeJasmine
                              : AppColor().yueGuangLanMoonlight,
                          child: Text(
                            choices[index],
                            style: TextStyle(
                              color: isChoosenChoice != index
                                  ? AppColor().coldSnow
                                  : AppColor().yueGuangLanMoonlight,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          _tryOutList[0].choiceList[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: isChoosenChoice == index
                                ? AppColor().capeJasmine
                                : AppColor().yueGuangLanMoonlight,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 42),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      isPrevious = true;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      isPrevious = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      isPrevious = false;
                    });
                  },
                  child: HeroIcon(
                    HeroIcons.arrowLeftCircle,
                    color: !isPrevious
                        ? AppColor().yueGuangLanMoonlight
                        : AppColor().capeJasmine,
                    size: 65,
                  ),
                ),
                Text(
                  'Question Number 3',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor().yueGuangLanMoonlight,
                  ),
                ),
                GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      isNext = true;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      isNext = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      isNext = false;
                    });
                  },
                  child: HeroIcon(
                    HeroIcons.arrowRightCircle,
                    color: !isNext
                        ? AppColor().yueGuangLanMoonlight
                        : AppColor().capeJasmine,
                    size: 65,
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
