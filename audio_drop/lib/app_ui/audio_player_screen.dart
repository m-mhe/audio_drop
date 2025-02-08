import 'package:audio_drop/app_utils/image_paths.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:get/get.dart';

import '../controllers/audio_pay_controller.dart';

class AudioPlayerScreen extends StatelessWidget {
  AudioPlayerScreen({
    super.key,
  });

  final SongModel? song = Get.find<AudioPayController>().nowPlaying;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width / 25,
            vertical: MediaQuery.sizeOf(context).height / 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            song != null
                ? QueryArtworkWidget(
                    id: song!.id,
                    type: ArtworkType.AUDIO,
                    artworkFit: BoxFit.cover,
                    quality: 100,
                    artworkBorder: BorderRadius.circular(20),
                    artworkHeight: MediaQuery.sizeOf(context).width -
                        ((MediaQuery.sizeOf(context).width / 25) * 2),
                    artworkWidth: double.maxFinite,
                    nullArtworkWidget: Container(
                      height: MediaQuery.sizeOf(context).width -
                          ((MediaQuery.sizeOf(context).width / 25) * 2),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(ImagePaths.defaultThumbnail),
                              fit: BoxFit.fitWidth)),
                    ),
                  )
                : Container(
                    height: MediaQuery.sizeOf(context).width -
                        ((MediaQuery.sizeOf(context).width / 25) * 2),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(ImagePaths.defaultThumbnail),
                            fit: BoxFit.fitWidth)),
                  ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    song != null ? song!.title : "No Playing",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: LightThemeColor.blueOne,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height / 20),
                  child: Text(song != null ? song!.artist ?? "" : "Not playing",
                      style: TextStyle(
                          color: LightThemeColor.blueOne.withAlpha(127))),
                ),
                ProgressBar(
                  progress: Duration(milliseconds: 1000),
                  buffered: Duration(milliseconds: 2000),
                  total: Duration(milliseconds: 5000),
                  onSeek: (duration) {},
                  timeLabelLocation: TimeLabelLocation.below,
                  timeLabelType: TimeLabelType.remainingTime,
                  timeLabelTextStyle: TextStyle(
                      fontSize: 16,
                      color: LightThemeColor.blueTwo,
                      fontWeight: FontWeight.w600),
                  timeLabelPadding: 5,
                  barHeight: 12,
                  barCapShape: BarCapShape.round,
                  thumbRadius: 6,
                  baseBarColor: LightThemeColor.blueThree,
                  bufferedBarColor: LightThemeColor.blueThree,
                  progressBarColor: LightThemeColor.red,
                  thumbColor: LightThemeColor.red,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.shuffle_rounded,
                          color: LightThemeColor.blueTwo,
                        )),
                    Row(
                      children: [
                        GestureDetector(
                            child: Icon(
                          Icons.skip_previous_rounded,
                          size: 50,
                          color: LightThemeColor.blueTwo,
                        )),
                        GetBuilder<AudioPayController>(builder: (controller) {
                          return GestureDetector(
                              onTap: () {
                                if (controller.isPlaying) {
                                  controller.pause();
                                } else {
                                  if (song != null) {
                                    controller.play(song!);
                                  }
                                }
                              },
                              child: Icon(
                                controller.isPlaying
                                    ? Icons.pause_rounded
                                    : Icons.play_arrow_rounded,
                                size: 50,
                                color: LightThemeColor.blueTwo,
                              ));
                        }),
                        GestureDetector(
                            child: Icon(
                          Icons.skip_next_rounded,
                          size: 50,
                          color: LightThemeColor.blueTwo,
                        )),
                      ],
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.menu,
                        color: LightThemeColor.blueTwo,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
