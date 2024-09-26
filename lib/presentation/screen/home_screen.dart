import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/screen/pages/home_page.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavigatorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            bottomNavigatorIndex = value;
            if (value == 0) {
              Provider.of<PageProvider>(context, listen: false).changeIndex(0);
            } else if (value == 1) {
              Provider.of<PageProvider>(context, listen: false).changeIndex(10);
            } else if (value == 2) {
              Provider.of<PageProvider>(context, listen: false).changeIndex(11);
            } else if (value == 3) {
              Provider.of<PageProvider>(context, listen: false).changeIndex(12);
            }
          });
        },
        showUnselectedLabels: true,
        selectedItemColor: AppColor().capeJasmine,
        unselectedItemColor: AppColor().coldSnow,
        currentIndex: bottomNavigatorIndex,
        items: [
          BottomNavigationBarItem(
            icon: const HeroIcon(HeroIcons.home),
            label: 'Home',
            backgroundColor: AppColor().yueGuangLanMoonlight,
          ),
          BottomNavigationBarItem(
            icon: const HeroIcon(HeroIcons.globeAsiaAustralia),
            label: 'Explore',
            backgroundColor: AppColor().yueGuangLanMoonlight,
          ),
          BottomNavigationBarItem(
            icon: const HeroIcon(HeroIcons.magnifyingGlass),
            label: 'Search',
            backgroundColor: AppColor().yueGuangLanMoonlight,
          ),
          BottomNavigationBarItem(
            icon: const HeroIcon(HeroIcons.user),
            label: 'Profile',
            backgroundColor: AppColor().yueGuangLanMoonlight,
          ),
        ],
      ),
      body: const Center(
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: HomePage(),
        ),
      ),
    );
  }
}
