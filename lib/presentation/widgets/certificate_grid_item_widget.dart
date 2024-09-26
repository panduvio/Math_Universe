import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/certificate_entity.dart';

class CertificateGridItemWidget extends StatefulWidget {
  final int itemIndex;
  const CertificateGridItemWidget({super.key, required this.itemIndex});

  @override
  State<CertificateGridItemWidget> createState() =>
      _CertificateGridItemWidgetState();
}

class _CertificateGridItemWidgetState extends State<CertificateGridItemWidget> {
  final _certificateList = certificateList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: 185,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor().yueGuangLanMoonlight,
            ),
            child: const Text(
              'Certificate',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _certificateList[widget.itemIndex].category,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      HeroIcon(
                        HeroIcons.userGroup,
                        style: HeroIconStyle.solid,
                        color: AppColor().yueGuangLanMoonlight,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Download',
                        style: TextStyle(
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              HeroIcon(
                HeroIcons.arrowDownOnSquare,
                color: AppColor().yueGuangLanMoonlight,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
