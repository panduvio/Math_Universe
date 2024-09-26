import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:math_universe/constant/app_color.dart';
import 'package:math_universe/domain/entities/video_entity.dart';
import 'package:math_universe/presentation/screen/video_screen.dart';

class VideoListTileWidget extends StatefulWidget {
  final int videoIndex;
  const VideoListTileWidget({super.key, required this.videoIndex});

  @override
  State<VideoListTileWidget> createState() => _VideoListTileWidgetState();
}

class _VideoListTileWidgetState extends State<VideoListTileWidget> {
  final _videoList = videoList;
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 110,
            width: 110,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              _videoList[widget.videoIndex].thumbnail,
              fit: BoxFit.fitHeight,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 184,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _videoList[widget.videoIndex].name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  _videoList[widget.videoIndex].description,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                Container(
                  height: 26,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor().bleachedSilk,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Start'),
                      const Spacer(),
                      GestureDetector(
                        onTapDown: (details) {
                          setState(() {
                            isTapped = true;
                          });
                        },
                        onTapUp: (details) {
                          setState(() {
                            isTapped = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VideoScreen(
                                      videoIndex: widget.videoIndex),
                                ));
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            isTapped = false;
                          });
                        },
                        child: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isTapped
                                ? AppColor().capeJasmine
                                : AppColor().mistyHarbor,
                          ),
                          child: HeroIcon(
                            HeroIcons.play,
                            style: HeroIconStyle.solid,
                            color: AppColor().coldSnow,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
