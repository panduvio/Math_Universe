import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/certificate_entity.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/widgets/certificate_grid_item_widget.dart';
import 'package:provider/provider.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({super.key});

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  int subjectIndex = 0;
  final categoryList = [
    'Video',
    'Question Bank',
    'Try Out',
    'Ranking',
  ];
  final _certificateList = certificateList;
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
              'Certificate',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 42, right: 42, top: 42),
              children: [
                SizedBox(
                  height: 118,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 116,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome Pandu!',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor().coldSnow,
                                  ),
                                ),
                                Text(
                                  'See your achievements\nthis week',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: AppColor().coldSnow,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              radius: 30,
                              child: HeroIcon(HeroIcons.user),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 81,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: 42,
                        width: 260,
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
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
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
                            categoryList[index],
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
                    padding: const EdgeInsets.only(top: 20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: _certificateList.length,
                    itemBuilder: (context, index) {
                      return CertificateGridItemWidget(itemIndex: index);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
