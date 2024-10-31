import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/competition_model.dart';

class CompetitionInformationContentWidget extends StatefulWidget {
  const CompetitionInformationContentWidget({super.key});

  @override
  State<CompetitionInformationContentWidget> createState() =>
      _CompetitionInformationContentWidgetState();
}

class _CompetitionInformationContentWidgetState
    extends State<CompetitionInformationContentWidget> {
  final informationContent = competitionList[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 172,
      // clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 210,
            width: 170,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().yueGuangLanMoonlight,
            ),
            child: Image.asset(
              'assets/competition/airlangga_short_competition.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            informationContent.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            informationContent.date,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColor().yueGuangLanMoonlight,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            informationContent.caption,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
              color: AppColor().wildDove,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            child: Container(
              child: Row(
                children: [
                  Text(
                    'More',
                    style: TextStyle(color: AppColor().yueGuangLanMoonlight),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  HeroIcon(
                    HeroIcons.arrowRight,
                    color: AppColor().yueGuangLanMoonlight,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
