import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/video_entity.dart';
import 'package:math_universe/presentation/widgets/video_list_tile_widget.dart';

class VideoScreen extends StatefulWidget {
  final int videoIndex;
  const VideoScreen({
    super.key,
    required this.videoIndex,
  });

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final _videoList = videoList;
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset(_videoList[widget.videoIndex].path)
          ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Learning Video',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            _videoList[widget.videoIndex].name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            _videoList[widget.videoIndex].description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const Text(
            'Related Video',
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
    );
  }
}
