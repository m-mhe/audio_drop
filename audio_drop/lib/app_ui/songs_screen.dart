import 'package:flutter/material.dart';

import '../app_utils/light_theme_color.dart';

class SongsScreen extends StatefulWidget {
  const SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Audio Player',
          style: Theme.of(context).textTheme.titleLarge,
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
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
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
                                              top: 10,
                                              bottom: 10,
                                              left: 10,
                                              right: 10),
                                          child: Container(
                                            height:
                                                MediaQuery.sizeOf(context).height /
                                                    12,
                                            width:
                                                MediaQuery.sizeOf(context).height /
                                                    11.5,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/default_music_thumnail.jpg"),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(7)),
                                          ),
                                        ),

                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Audio Title",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                  color:
                                                  LightThemeColor.blueOne),
                                            ),
                                            Text(
                                              "Subtitle",
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
                                      ],
                                    ),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: LightThemeColor.blueOne,))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 10,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: LightThemeColor.blueThree,
              ),
            )
          ],
        ),
      ),
    );
  }
}
