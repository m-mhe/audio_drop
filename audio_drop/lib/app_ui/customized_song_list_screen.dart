import 'package:flutter/material.dart';

import '../app_utils/light_theme_color.dart';

class CustomizedSongListScreen extends StatelessWidget {
  const CustomizedSongListScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: LightThemeColor.blueOne),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
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
                            child: Container(
                              height: MediaQuery.sizeOf(context).height / 12,
                              width: MediaQuery.sizeOf(context).height / 11.5,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/default_music_thumbnail.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Audio Title",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: LightThemeColor.blueOne),
                              ),
                              Text(
                                "Subtitle",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: LightThemeColor.blueOne
                                          .withAlpha(127),
                                    ),
                              ),
                            ],
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
            ],
          );
        },
        itemCount: 100,
      ),
    );
  }
}
