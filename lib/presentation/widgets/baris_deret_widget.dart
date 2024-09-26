import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';

class BarisDeretWidget extends StatefulWidget {
  const BarisDeretWidget({super.key});

  @override
  State<BarisDeretWidget> createState() => _BarisDeretWidgetState();
}

class _BarisDeretWidgetState extends State<BarisDeretWidget> {
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
            centerTitle: true,
            title: Text(
              'Baris dan Deret',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 460,
                child: Image.asset(
                  'assets/modul/baris_deret_1.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Image.asset('assets/modul/baris_deret_2.jpg'),
            ],
          ))
        ],
      ),
    );
  }
}
