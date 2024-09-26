import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/subject_entity.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/widgets/bank_soal_subject_button.dart';
import 'package:provider/provider.dart';

class QuestionBankPage extends StatefulWidget {
  const QuestionBankPage({super.key});

  @override
  State<QuestionBankPage> createState() => _QuestionBankPageState();
}

class _QuestionBankPageState extends State<QuestionBankPage> {
  List<String> subjectList = [
    'All',
    'Geometri',
    'Aljabar',
    'Teori Bilangan',
    'Kombinatorika',
  ];
  final _subSubjectList = subSubjectList;
  int subjectIndex = 0;
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
              'Question Bank',
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
                const SizedBox(
                  height: 31,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 41),
                  height: 81,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: 42,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor().bleachedSilk,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: HeroIcon(
                              HeroIcons.magnifyingGlass,
                              color: AppColor().yueGuangLanMoonlight,
                            ),
                            hintText: 'Search Here',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                        child: HeroIcon(
                          HeroIcons.adjustmentsHorizontal,
                          color: AppColor().coldSnow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 36),
                    scrollDirection: Axis.horizontal,
                    itemCount: subjectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            subjectIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.all(8),
                          height: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: subjectIndex == index
                                ? AppColor().yueGuangLanMoonlight
                                : AppColor().bleachedSilk,
                          ),
                          child: Text(
                            subjectList[index],
                            style: TextStyle(
                              color: subjectIndex == index
                                  ? AppColor().coldSnow
                                  : AppColor().yueGuangLanMoonlight,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 520,
                  child: GridView.builder(
                    padding: const EdgeInsets.all(42),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: _subSubjectList.length,
                    itemBuilder: (context, index) {
                      return BankSoalSubjectButton(subjectIndex: index);
                    },
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
