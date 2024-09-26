import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class DiscussionRoomFeedbackPage extends StatefulWidget {
  const DiscussionRoomFeedbackPage({super.key});

  @override
  State<DiscussionRoomFeedbackPage> createState() =>
      _DiscussionRoomFeedbackPageState();
}

class _DiscussionRoomFeedbackPageState
    extends State<DiscussionRoomFeedbackPage> {
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
                        .changeIndex(8);
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
              'Discussion Room',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Container(
            height: 230,
            color: AppColor().capeJasmine,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(50)),
                        color: AppColor().coldSnow),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            children: [
              SizedBox(
                height: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Feedback',
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Probability',
                          style: TextStyle(fontSize: 26),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        HeroIcon(
                          HeroIcons.heart,
                          style: HeroIconStyle.solid,
                          size: 70,
                          color: AppColor().red,
                        ),
                        const Text(
                          '4,4 K',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        HeroIcon(HeroIcons.userCircle),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Nanda Dwi Laksana',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Jawabannya sangat membantu, terima kasih!!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        HeroIcon(HeroIcons.userCircle),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Fika Erdina',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                        HeroIcon(
                          HeroIcons.star,
                          color: AppColor().capeJasmine,
                          size: 28,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Maaf mau menanggapi, kenapa titik sampel mata dadu bernilai 5 jumlahnya hanya 1 ya?? belum mengerti..',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeroIcon(HeroIcons.arrowRight),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            HeroIcon(HeroIcons.userCircle),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Zahira Shofa',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Halo, Fika! Aku izin bantu menanggapi yaa... jadi titik sampel merupakan banyaknya anggota',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
