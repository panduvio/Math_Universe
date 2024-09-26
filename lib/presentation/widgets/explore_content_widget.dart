import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/explore_entity.dart';

class ExploreContentWidget extends StatefulWidget {
  final int index;
  const ExploreContentWidget({super.key, required this.index});

  @override
  State<ExploreContentWidget> createState() => _ExploreContentWidgetState();
}

class _ExploreContentWidgetState extends State<ExploreContentWidget> {
  final _exploreList = exploreList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_exploreList[widget.index].title),
          SizedBox(
            height: 4,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 102,
            width: 180,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().capeJasmine,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: AppColor().yueGuangLanMoonlight,
                  child: HeroIcon(
                    HeroIcons.play,
                    color: AppColor().coldSnow,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
