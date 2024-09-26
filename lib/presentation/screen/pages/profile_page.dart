import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            backgroundColor: AppColor().yueGuangLanMoonlight,
            centerTitle: true,
            title: Text(
              'Profile',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Container(
            height: 195,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    child: HeroIcon(HeroIcons.user),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  heightFactor: 3.8,
                  widthFactor: 6.4,
                  child: CircleAvatar(
                    backgroundColor: AppColor().yueGuangLanMoonlight,
                    child: HeroIcon(
                      HeroIcons.pencil,
                      // style: HeroIconStyle.solid,
                      color: AppColor().coldSnow,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Pandu Violana Mulya',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('pandu@gmail.com'),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 35),
            height: 40,
            width: double.maxFinite,
            color: AppColor().whiteEdgar,
            child: Text('Settings'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            height: 210,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeroIcon(
                      HeroIcons.moon,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Mode',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Dark & Light')
                      ],
                    ),
                    Spacer(),
                    AnimatedToggleSwitch<int>.dual(
                      spacing: 10,
                      height: 40,
                      style: ToggleStyle(
                        indicatorColor: AppColor().coldSnow,
                      ),
                      current: current,
                      first: 0,
                      second: 1,
                      onChanged: (value) {
                        setState(() {
                          current = value;
                        });
                      },
                      iconBuilder: (value) {
                        return value == 0
                            ? HeroIcon(HeroIcons.moon)
                            : HeroIcon(HeroIcons.sun);
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    HeroIcon(
                      HeroIcons.key,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Change Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    HeroIcon(HeroIcons.chevronRight),
                  ],
                ),
                Row(
                  children: [
                    HeroIcon(
                      HeroIcons.language,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Language',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    HeroIcon(HeroIcons.chevronRight),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 35),
            height: 40,
            width: double.maxFinite,
            color: AppColor().whiteEdgar,
            child: Text('Information'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            height: 160,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    HeroIcon(
                      HeroIcons.devicePhoneMobile,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'About Application',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    HeroIcon(HeroIcons.chevronRight),
                  ],
                ),
                Row(
                  children: [
                    HeroIcon(
                      HeroIcons.documentText,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Terms and Condition',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    HeroIcon(HeroIcons.chevronRight),
                  ],
                ),
                Row(
                  children: [
                    HeroIcon(
                      HeroIcons.shieldCheck,
                      size: 30,
                      style: HeroIconStyle.solid,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    HeroIcon(HeroIcons.chevronRight),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
