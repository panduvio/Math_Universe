import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/rank_entity.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  final _rankList = rankList;
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
              'Ranking',
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
                SizedBox(
                  height: 20,
                ),
                Text('Welcome'),
                Text(
                  'Pandu Violana Mulya',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  height: 186,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor().yueGuangLanMoonlight,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Weekly Rank'),
                          CircleAvatar(
                            radius: 49,
                            child: HeroIcon(HeroIcons.user),
                          ),
                          Text('Pandu Violana Mulya'),
                        ],
                      ),
                      HeroIcon(
                        HeroIcons.checkBadge,
                        size: 80,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTapDown: (details) {},
                          onTapUp: (details) {},
                          onTapCancel: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColor().yueGuangLanMoonlight,
                            radius: 23,
                            child: HeroIcon(
                              HeroIcons.videoCamera,
                              color: AppColor().coldSnow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Video'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTapDown: (details) {},
                          onTapUp: (details) {},
                          onTapCancel: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColor().yueGuangLanMoonlight,
                            radius: 23,
                            child: HeroIcon(
                              HeroIcons.arrowsRightLeft,
                              color: AppColor().coldSnow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Result\nDiscussion',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTapDown: (details) {},
                          onTapUp: (details) {},
                          onTapCancel: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColor().yueGuangLanMoonlight,
                            radius: 23,
                            child: HeroIcon(
                              HeroIcons.pencilSquare,
                              color: AppColor().coldSnow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Try Out'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTapDown: (details) {},
                          onTapUp: (details) {},
                          onTapCancel: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColor().yueGuangLanMoonlight,
                            radius: 23,
                            child: HeroIcon(
                              HeroIcons.printer,
                              color: AppColor().coldSnow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Print\nCertificate',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTapDown: (details) {},
                          onTapUp: (details) {},
                          onTapCancel: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColor().yueGuangLanMoonlight,
                            radius: 23,
                            child: HeroIcon(
                              HeroIcons.clipboardDocumentList,
                              color: AppColor().coldSnow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Question\nBank',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  shape: Border.all(
                    style: BorderStyle.none,
                  ),
                  title: Text('Ranking Lists'),
                  trailing: Text(
                    'Show All',
                    style: TextStyle(color: AppColor().blue),
                  ),
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: _rankList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: index == 0
                                ? AppColor().goldenGun
                                : (index == 1
                                    ? AppColor().wildDove
                                    : (index == 2
                                        ? AppColor().burnishedBronze
                                        : AppColor().mistyHarbor)),
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                  color: index <= 2
                                      ? AppColor().black
                                      : AppColor().coldSnow),
                            ),
                          ),
                          title: Text(_rankList[index].name),
                          subtitle: Text('Total Points'),
                          trailing: Text(
                            '${_rankList[index].score}',
                            style: TextStyle(fontSize: 16),
                          ),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
