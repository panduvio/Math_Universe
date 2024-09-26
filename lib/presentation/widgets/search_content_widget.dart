import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';

class SearchContentWidget extends StatefulWidget {
  const SearchContentWidget({super.key});

  @override
  State<SearchContentWidget> createState() => _SearchContentWidgetState();
}

class _SearchContentWidgetState extends State<SearchContentWidget> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor().wildDove,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/modul_image_1.png',
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'title',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 30,
                width: 128,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColor().wildDove,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Start',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 30,
                      width: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor().mistyHarbor,
                      ),
                      child: HeroIcon(
                        HeroIcons.play,
                        style: HeroIconStyle.solid,
                        color: AppColor().coldSnow,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isFav = !isFav;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColor().wildDove,
                  )),
              child: HeroIcon(
                HeroIcons.heart,
                style: isFav ? HeroIconStyle.solid : HeroIconStyle.outline,
                color: isFav ? AppColor().red : AppColor().wildDove,
              ),
            ),
          )
        ],
      ),
    );
  }
}
