import 'package:audio_drop/app_ui/albums_screen.dart';
import 'package:audio_drop/app_ui/audio_player_screen.dart';
import 'package:audio_drop/app_ui/home_screen.dart';
import 'package:audio_drop/app_ui/playlists_screen.dart';
import 'package:audio_drop/app_ui/search_screen.dart';
import 'package:audio_drop/app_ui/songs_screen.dart';
import 'package:audio_drop/app_utils/image_paths.dart';
import 'package:audio_drop/controllers/audio_pay_controller.dart';
import 'package:audio_drop/controllers/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_utils/light_theme_color.dart';
import 'package:get/get.dart';

class NavigatorWidget extends StatelessWidget {
  NavigatorWidget({super.key});

  final List<Widget> _screenList = [
    const HomeScreen(),
    const SongsScreen(),
    const PlaylistsScreen(),
    const AlbumsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Audio Player',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: LightThemeColor.blueOne),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const SearchScreen());
              },
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            GetBuilder<NavController>(builder: (controller) {
              return Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 23,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIndex(0);
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: controller.currentIndex == 0
                                        ? LightThemeColor.red
                                        : LightThemeColor.blueThree,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Home',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: controller.currentIndex ==
                                                      0
                                                  ? LightThemeColor.blueFour
                                                  : LightThemeColor.blueTwo),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIndex(1);
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: controller.currentIndex == 1
                                        ? LightThemeColor.red
                                        : LightThemeColor.blueThree,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Song',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: controller.currentIndex ==
                                                      1
                                                  ? LightThemeColor.blueFour
                                                  : LightThemeColor.blueTwo),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIndex(2);
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: controller.currentIndex == 2
                                        ? LightThemeColor.red
                                        : LightThemeColor.blueThree,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'PlayLists',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: controller.currentIndex ==
                                                      2
                                                  ? LightThemeColor.blueFour
                                                  : LightThemeColor.blueTwo),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIndex(3);
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: controller.currentIndex == 3
                                        ? LightThemeColor.red
                                        : LightThemeColor.blueThree,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Albums',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: controller.currentIndex ==
                                                      3
                                                  ? LightThemeColor.blueFour
                                                  : LightThemeColor.blueTwo),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    _screenList[controller.currentIndex]
                  ],
                ),
              );
            }),
            InkWell(
              onTap: () {
                Get.to(AudioPlayerScreen(), transition: Transition.downToUp);
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height / 10,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(
                      ImagePaths.appLogo,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        LightThemeColor.blueThree, BlendMode.multiply),
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: LightThemeColor.blueThree,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                                backgroundColor: LightThemeColor.blueOne),
                            icon: Icon(
                              Icons.skip_previous_rounded,
                              color: LightThemeColor.blueThree,
                            )),
                        GetBuilder<AudioPayController>(builder: (controller) {
                          return IconButton(
                              onPressed: () {
                                if (controller.isPlaying) {
                                  controller.pause();
                                } else {
                                  if (controller.nowPlaying != null) {
                                    controller.play(controller.nowPlaying!);
                                  }
                                }
                              },
                              style: IconButton.styleFrom(
                                  backgroundColor: LightThemeColor.blueOne),
                              icon: Icon(
                                controller.isPlaying
                                    ? Icons.pause_rounded
                                    : Icons.play_arrow_rounded,
                                color: LightThemeColor.blueThree,
                              ));
                        }),
                        IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                              backgroundColor: LightThemeColor.blueOne),
                          icon: Icon(
                            Icons.skip_next_rounded,
                            color: LightThemeColor.blueThree,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
