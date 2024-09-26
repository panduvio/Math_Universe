import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class CompetitionInformationPage extends StatefulWidget {
  const CompetitionInformationPage({super.key});

  @override
  State<CompetitionInformationPage> createState() =>
      _CompetitionInformationPageState();
}

class _CompetitionInformationPageState
    extends State<CompetitionInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8),
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
            title: Text(
              'Competition Information',
              style: TextStyle(fontSize: 24, color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 400,
                  color: Colors.red,
                ),
                Container(
                  height: 400,
                  color: const Color.fromARGB(255, 216, 244, 54),
                ),
                Container(
                  height: 400,
                  color: const Color.fromARGB(255, 54, 244, 111),
                ),
                Container(
                  height: 400,
                  color: const Color.fromARGB(255, 54, 73, 244),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
