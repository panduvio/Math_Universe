import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/presentation/widgets/search_content_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  List<String> sortByList = [
    '- Sort by -',
    'A-Z',
    'Z-A',
    'Date',
  ];
  String selectedItem = '';

  @override
  void initState() {
    // TODO: implement initState
    selectedItem = sortByList.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            actions: [
              Image.asset('assets/math_universe_logo.png'),
            ],
            backgroundColor: AppColor().yueGuangLanMoonlight,
            centerTitle: true,
            title: Text(
              'Math Universe',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              children: [
                Container(
                  height: 95,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor().wildDove),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 250,
                              child: TextField(
                                controller: searchController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Here',
                                ),
                              ),
                            ),
                            Spacer(),
                            HeroIcon(HeroIcons.magnifyingGlass)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColor().wildDove),
                            ),
                            child: DropdownButton(
                              value: selectedItem,
                              isExpanded: true,
                              items: sortByList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedItem = value!;
                                });
                                print(selectedItem);
                              },
                            ),
                          ),
                          Spacer(),
                          HeroIcon(HeroIcons.adjustmentsHorizontal),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 540,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return SearchContentWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
