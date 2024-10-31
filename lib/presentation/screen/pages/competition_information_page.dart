import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/widgets/competition_information_content_widget.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 24),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  height: 200,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    height: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor().yueGuangLanMoonlight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WELCOME!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor().coldSnow,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                            width: 175,
                            child: Text(
                              'Life is like a bicycle, to stay balanced we have to keep moving.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1,
                                color: AppColor().coldSnow,
                              ),
                            )),
                        Text(
                          '- Albert Einstein',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColor().coldSnow,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Pandu Violana Mulya!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                      ),
                      Text(
                        'We have some informations for you',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 520,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                        childAspectRatio: 0.4),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return CompetitionInformationContentWidget();
                    },
                  ),
                )
                // Container(
                //   height: 400,
                //   color: const Color.fromARGB(255, 54, 244, 111),
                // ),
                // Container(
                //   height: 400,
                //   color: const Color.fromARGB(255, 54, 73, 244),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
