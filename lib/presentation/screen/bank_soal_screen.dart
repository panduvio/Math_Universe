import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/bank_soal_entity.dart';

class BankSoalScreen extends StatefulWidget {
  final int bankSoalIndex;
  const BankSoalScreen({super.key, required this.bankSoalIndex});

  @override
  State<BankSoalScreen> createState() => _BankSoalScreenState();
}

class _BankSoalScreenState extends State<BankSoalScreen> {
  final _questionList = contohSoalList;
  final List<String> choices = [
    'A',
    'B',
    'C',
    'D',
    'E',
  ];
  int isChoosenChoice = 5;
  bool isShowExplanation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
          'Question Bank',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColor().coldSnow),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 42),
          child: Column(
            children: [
              Text(
                _questionList[0].subSubject,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 545,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor().yueGuangLanMoonlight,
                ),
                child: Column(
                  children: [
                    Text(
                      _questionList[0].question,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColor().coldSnow,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
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
                                    backgroundColor: isChoosenChoice == index
                                        ? AppColor().capeJasmine
                                        : AppColor().coldSnow,
                                    child: Text(
                                      choices[index],
                                      style: TextStyle(
                                        color: isChoosenChoice == index
                                            ? AppColor().coldSnow
                                            : AppColor().yueGuangLanMoonlight,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    _questionList[0].choiceList[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: isChoosenChoice == index
                                          ? AppColor().capeJasmine
                                          : AppColor().coldSnow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isShowExplanation = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        isShowExplanation = false;
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        isShowExplanation = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      height: 40,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColor().yueGuangLanMoonlight),
                        borderRadius: BorderRadius.circular(16),
                        color: isShowExplanation
                            ? AppColor().yueGuangLanMoonlight
                            : AppColor().bleachedSilk,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Show Explanation',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: isShowExplanation
                                    ? AppColor().coldSnow
                                    : AppColor().yueGuangLanMoonlight),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          HeroIcon(
                            HeroIcons.arrowRight,
                            color: isShowExplanation
                                ? AppColor().coldSnow
                                : AppColor().yueGuangLanMoonlight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
