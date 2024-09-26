import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/explore_entity.dart';
import 'package:math_universe/presentation/widgets/explore_content_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController searchController = TextEditingController();
  final _exploreList = exploreList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 1,
                color: AppColor().yueGuangLanMoonlight,
              ),
            ),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                icon: HeroIcon(
                  HeroIcons.magnifyingGlassCircle,
                  style: HeroIconStyle.solid,
                  color: AppColor().yueGuangLanMoonlight,
                ),
                hintText: 'Search Here',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What do you want to learn today?',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Pandu Violana Mulya',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  child: HeroIcon(
                    HeroIcons.user,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(18),
            height: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().yueGuangLanMoonlight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Intermezzo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor().coldSnow,
                      ),
                    ),
                    HeroIcon(
                      HeroIcons.minus,
                      color: AppColor().coldSnow,
                    ),
                    SizedBox(
                      width: 232,
                      child: Text(
                        'Math Universe is here as First Aid in Difficulty (P3K)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor().coldSnow,
                        ),
                      ),
                    ),
                  ],
                ),
                HeroIcon(
                  HeroIcons.photo,
                  size: 55,
                  color: AppColor().coldSnow,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              HeroIcon(HeroIcons.fire),
              SizedBox(
                width: 10,
              ),
              Text('Learning History'),
              Spacer(),
              HeroIcon(HeroIcons.adjustmentsHorizontal),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.3),
              itemCount: _exploreList.length,
              itemBuilder: (context, index) {
                return ExploreContentWidget(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
