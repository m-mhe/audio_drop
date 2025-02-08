import 'package:audio_drop/app_ui/audio_player_screen.dart';
import 'package:audio_drop/controllers/audio_fetch_controller.dart';
import 'package:audio_drop/controllers/audio_pay_controller.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import '../app_utils/light_theme_color.dart';
import 'package:get/get.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        color: LightThemeColor.red,
        backgroundColor: Colors.white,
        onRefresh: ()async {
          return await Get.find<AudioFetchController>().fetchAudios();
        },
        child: GetBuilder<AudioFetchController>(builder: (controller) {
          return Visibility(
            visible: controller.audios.isNotEmpty,
            replacement: Center(
                child: Text(
                  "No Song Found",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: LightThemeColor.blueOne.withAlpha(100)),
                )),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: InkWell(
                    onTap: (){
                      Get.find<AudioPayController>().play(controller.audios[index]);
                      Get.to(AudioPlayerScreen());
                    },
                    child: Card(
                      shadowColor: LightThemeColor.blueFour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      color: LightThemeColor.blueFour,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 10),
                                child: QueryArtworkWidget(
                                  quality: 20,
                                  id: controller.audios[index].id,
                                  type: ArtworkType.AUDIO,
                                  artworkBorder: BorderRadius.circular(7),
                                  artworkWidth: MediaQuery.sizeOf(context).height / 13,
                                  artworkHeight: MediaQuery.sizeOf(context).height / 13,
                                  artworkFit: BoxFit.cover,
                                  nullArtworkWidget: Container(
                                    height: MediaQuery.sizeOf(context).height / 13,
                                    width: MediaQuery.sizeOf(context).height / 13,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/default_music_thumbnail.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width / 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.audios[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: LightThemeColor.blueOne),
                                    ),
                                    Text(
                                      controller.audios[index].artist ?? "",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: LightThemeColor.blueOne
                                                .withOpacity(0.5),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: LightThemeColor.blueOne,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: controller.audios.length,
            ),
          );
        }),
      ),
    );
  }
}
