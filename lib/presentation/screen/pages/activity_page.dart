import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  int featureButtonIndex = 0;

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
              'Activity',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 24,
            ),
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              color: AppColor().unicornSilver,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Pandu Violana Mulya',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See your activities here!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 42),
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: AppColor().capeJasmine,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: TableCalendar(
                    focusedDay: _focusedDay,
                    firstDay: DateTime.utc(2024, 1, 1),
                    lastDay: DateTime.utc(2050, 12, 31),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: AppColor().yueGuangLanMoonlight,
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        color: AppColor().yueGuangLanMoonlight.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonDecoration: BoxDecoration(
                          border: Border.all(color: AppColor().coldSnow),
                          borderRadius: BorderRadius.circular(10)),
                      formatButtonTextStyle:
                          TextStyle(color: AppColor().coldSnow),
                      decoration:
                          BoxDecoration(color: AppColor().yueGuangLanMoonlight),
                      titleTextStyle: TextStyle(
                        color: AppColor().coldSnow,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 22,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColor().georgeaPeach,
                          ),
                          Text('Online')
                        ],
                      ),
                    ),
                    Container(
                      height: 22,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColor().capeJasmine,
                          ),
                          Text('Study Schedule')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTapDown: (details) {
                        setState(() {
                          featureButtonIndex = 1;
                        });
                      },
                      onTapUp: (details) {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      child: SizedBox(
                        height: 85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: featureButtonIndex == 1
                                    ? AppColor().capeJasmine
                                    : AppColor().yueGuangLanMoonlight,
                              ),
                              child: Image.asset(
                                'assets/question_bank_icon.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text('Questions'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: (details) {
                        setState(() {
                          featureButtonIndex = 2;
                        });
                      },
                      onTapUp: (details) {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      child: SizedBox(
                        height: 85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: featureButtonIndex == 2
                                    ? AppColor().capeJasmine
                                    : AppColor().yueGuangLanMoonlight,
                              ),
                              child: Image.asset(
                                'assets/video_icon.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text('Videos'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: (details) {
                        setState(() {
                          featureButtonIndex = 3;
                        });
                      },
                      onTapUp: (details) {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          featureButtonIndex = 0;
                        });
                      },
                      child: SizedBox(
                        height: 85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: featureButtonIndex == 3
                                    ? AppColor().capeJasmine
                                    : AppColor().yueGuangLanMoonlight,
                              ),
                              child: Image.asset(
                                'assets/tryout_icon.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text('Try Out'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      featureButtonIndex = 4;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      featureButtonIndex = 0;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      featureButtonIndex = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: featureButtonIndex == 4
                          ? AppColor().yueGuangLanMoonlight
                          : AppColor().capeJasmine,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColor().coldSnow,
                          child: HeroIcon(
                            HeroIcons.calendarDays,
                            color: featureButtonIndex == 4
                                ? AppColor().yueGuangLanMoonlight
                                : AppColor().capeJasmine,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Let\'s set-up your schedule!',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: featureButtonIndex == 4
                                  ? AppColor().coldSnow
                                  : AppColor().black),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
