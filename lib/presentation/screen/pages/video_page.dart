import 'dart:math';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/video_entity.dart';
import 'package:math_universe/presentation/widgets/video_list_tile_widget.dart';
import 'package:provider/provider.dart';

import '../../providers/page_provider.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final _videoList = videoList;
  List<String> subjectList = [
    'All',
    'Geometri',
    'Aljabar',
    'Teori Bilangan',
    'Kombinatorika',
  ];
  int subjectIndex = 0;
  int randomIndex = 2;

  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    initialize();
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset(_videoList[randomIndex].path)
          ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }

  void initialize() async {
    randomIndex = Random().nextInt(videoList.length);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

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
              'Video',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor().coldSnow),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              children: [
                const SizedBox(
                  height: 31,
                ),
                SizedBox(
                  height: 81,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: 42,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor().bleachedSilk,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: HeroIcon(
                              HeroIcons.magnifyingGlass,
                              color: AppColor().yueGuangLanMoonlight,
                            ),
                            hintText: 'Search Here',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor().yueGuangLanMoonlight,
                        ),
                        child: HeroIcon(
                          HeroIcons.adjustmentsHorizontal,
                          color: AppColor().coldSnow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 36),
                    scrollDirection: Axis.horizontal,
                    itemCount: subjectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            subjectIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.all(8),
                          height: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: subjectIndex == index
                                ? AppColor().yueGuangLanMoonlight
                                : AppColor().bleachedSilk,
                          ),
                          child: Text(
                            subjectList[index],
                            style: TextStyle(
                              color: subjectIndex == index
                                  ? AppColor().coldSnow
                                  : AppColor().yueGuangLanMoonlight,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  height: 345,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          _videoList[randomIndex].name,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomVideoPlayer(
                            customVideoPlayerController:
                                _customVideoPlayerController),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Video List',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: _videoList.length,
                    itemBuilder: (context, index) {
                      return VideoListTileWidget(videoIndex: index);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
