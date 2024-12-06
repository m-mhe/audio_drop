import 'package:audio_drop/app_ui/songs_screen.dart';
import 'package:flutter/material.dart';
import '../../app_utils/light_theme_color.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Expanded(
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
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.blueThree,
                              ),
                              child: Center(
                                child: Text(
                                  'Home',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: LightThemeColor.blueTwo),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.red,
                              ),
                              child: Center(
                                child: Text(
                                  'Song',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: LightThemeColor.blueFour),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.blueThree,
                              ),
                              child: Center(
                                child: Text(
                                  'PlayLists',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: LightThemeColor.blueTwo),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.blueThree,
                              ),
                              child: Center(
                                child: Text(
                                  'Folders',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: LightThemeColor.blueTwo),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.blueThree,
                              ),
                              child: Center(
                                child: Text(
                                  'Artists',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: LightThemeColor.blueTwo),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: LightThemeColor.blueThree,
                              ),
                              child: Center(
                                child: Text(
                                  'Albums',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: LightThemeColor.blueTwo),
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
                  const SongsScreen()
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 10,
              width: double.maxFinite,
              decoration: BoxDecoration(
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
                      IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                              backgroundColor: LightThemeColor.blueOne),
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            color: LightThemeColor.blueThree,
                          )),
                      IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                              backgroundColor: LightThemeColor.blueOne),
                          icon: Icon(
                            Icons.skip_next_rounded,
                            color: LightThemeColor.blueThree,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Song Title Song Title Song Title Song Title Song Title Song Title Song Title', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueOne),maxLines: 1,overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
