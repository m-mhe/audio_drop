import 'package:audio_drop/app_utils/image_paths.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:audio_drop/controllers/audio_fetch_controller.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:get/get.dart';

import '../controllers/audio_pay_controller.dart';

class AudioPlayerScreen extends StatelessWidget {
  const AudioPlayerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AudioPayController>(builder: (controller) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 25,
              vertical: MediaQuery.sizeOf(context).height / 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controller.nowPlaying != null
                  ? QueryArtworkWidget(
                      size: 1000,
                      artworkQuality: FilterQuality.high,
                      id: controller.nowPlaying!.id,
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
                            image: const DecorationImage(
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
                          image: const DecorationImage(
                              image: AssetImage(ImagePaths.defaultThumbnail),
                              fit: BoxFit.fitWidth)),
                    ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      controller.nowPlaying != null
                          ? controller.nowPlaying!.title
                          : "No Playing",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: LightThemeColor.blueOne,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height / 20),
                    child: Text(
                        controller.nowPlaying != null
                            ? controller.nowPlaying!.artist ?? ""
                            : "Not playing",
                        style: TextStyle(
                            color: LightThemeColor.blueOne.withAlpha(127))),
                  ),
                  StreamBuilder(
                      stream: controller.audioPlayer.positionStream,
                      builder: (context, snapshot) {
                        return ProgressBar(
                          progress: snapshot.data ?? const Duration(seconds: 0),
                          total: controller.audioDuration ??
                              const Duration(seconds: 0),
                          onSeek: (duration) {
                            controller.audioPlayer.seek(duration);
                          },
                          timeLabelLocation: TimeLabelLocation.below,
                          timeLabelType: TimeLabelType.totalTime,
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
                        );
                      }),
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
                              onTap: () {
                                controller.play(
                                    Get.find<AudioFetchController>().audios[
                                        controller.index != 0
                                            ? controller.index - 1
                                            : controller.index],
                                    controller.index != 0
                                        ? controller.index - 1
                                        : controller.index);
                              },
                              child: Icon(
                                Icons.skip_previous_rounded,
                                size: 50,
                                color: LightThemeColor.blueTwo,
                              )),
                          GestureDetector(
                              onTap: () {
                                if (controller.isPlaying) {
                                  controller.pause();
                                } else {
                                  if (controller.nowPlaying != null) {
                                    controller.play(controller.nowPlaying!,
                                        controller.index);
                                  }
                                }
                              },
                              child: Icon(
                                controller.isPlaying
                                    ? Icons.pause_rounded
                                    : Icons.play_arrow_rounded,
                                size: 50,
                                color: LightThemeColor.blueTwo,
                              )),
                          GestureDetector(
                              onTap: () {
                                controller.play(
                                    Get.find<AudioFetchController>().audios[
                                        controller.index !=
                                                Get.find<AudioFetchController>()
                                                        .audios
                                                        .length -
                                                    1
                                            ? controller.index + 1
                                            : controller.index],
                                    controller.index !=
                                            Get.find<AudioFetchController>()
                                                    .audios
                                                    .length -
                                                1
                                        ? controller.index + 1
                                        : controller.index);
                              },
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
        );
      }),
    );
  }
}
