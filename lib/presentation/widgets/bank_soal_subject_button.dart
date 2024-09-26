import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/subject_entity.dart';
import 'package:math_universe/presentation/screen/bank_soal_screen.dart';

class BankSoalSubjectButton extends StatefulWidget {
  final int subjectIndex;

  const BankSoalSubjectButton({super.key, required this.subjectIndex});

  @override
  State<BankSoalSubjectButton> createState() => _BankSoalSubjectButtonState();
}

class _BankSoalSubjectButtonState extends State<BankSoalSubjectButton> {
  final subjectList = subSubjectList;
  int tapIndex = 0;
  bool isFavorited = false;
  bool isStart = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      width: 160,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor().yueGuangLanMoonlight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Spacer(),
                Text(
                  subjectList[widget.subjectIndex].subSubject,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // Spacer(),
                HeroIcon(
                  HeroIcons.bookOpen,
                  size: 50,
                  color: AppColor().coldSnow,
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTapDown: (details) {
                        setState(() {
                          tapIndex = 1;
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          if (isFavorited == true) {
                            tapIndex = 2;
                          } else {
                            tapIndex = 0;
                          }
                        });
                      },
                      onTapUp: (details) {
                        setState(() {
                          if (isFavorited == false && tapIndex == 1) {
                            tapIndex = 2;
                            isFavorited = true;
                          } else {
                            tapIndex = 0;
                            isFavorited = false;
                          }
                        });
                      },
                      child: HeroIcon(
                        HeroIcons.heart,
                        style: tapIndex != 0
                            ? HeroIconStyle.solid
                            : HeroIconStyle.outline,
                        color: (isFavorited == true && tapIndex == 2)
                            ? AppColor().red
                            : AppColor().coldSnow,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTapDown: (details) {
                setState(() {
                  isStart = true;
                });
              },
              onTapUp: (details) {
                setState(() {
                  isStart = false;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BankSoalScreen(bankSoalIndex: widget.subjectIndex),
                    ));
              },
              onTapCancel: () {
                setState(() {
                  isStart = false;
                });
              },
              child: Container(
                height: 30,
                width: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: isStart ? AppColor().capeJasmine : AppColor().doctor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                        color: isStart
                            ? AppColor().coldSnow
                            : AppColor().yueGuangLanMoonlight,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    HeroIcon(
                      HeroIcons.pencil,
                      color: isStart
                          ? AppColor().coldSnow
                          : AppColor().yueGuangLanMoonlight,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
