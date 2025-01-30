import 'package:audio_drop/app_ui/customized_song_list_screen.dart';
import 'package:audio_drop/app_ui/widgets/horizontal_song_list.dart';
import 'package:audio_drop/app_ui/widgets/most_played_horizontal_list_songs.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("New added", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: LightThemeColor.blueOne),),
                ),
                InkWell(
                  onTap: (){
                    Get.to(CustomizedSongListScreen(title: 'New added',));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    child: Text("See all", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.red),),
                  ),
                ),
              ],
            ),
            const HorizontalSongList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Most played", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: LightThemeColor.blueOne),),
                ),
                InkWell(
                  onTap: (){
                    Get.to(CustomizedSongListScreen(title: 'Most played',));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    child: Text("See all", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.red),),
                  ),
                ),
              ],
            ),
            const MostPlayedHorizontalListSongs(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Recently played", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: LightThemeColor.blueOne),),
                ),
                InkWell(
                  onTap: (){
                    Get.to(CustomizedSongListScreen(title: 'Recently played',));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    child: Text("See all", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.red),),
                  ),
                ),
              ],
            ),
            const HorizontalSongList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Not played", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: LightThemeColor.blueOne),),
                ),
                InkWell(
                  onTap: (){
                    Get.to(CustomizedSongListScreen(title: 'Not played',));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    child: Text("See all", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.red),),
                  ),
                ),
              ],
            ),
            const HorizontalSongList(),
          ],
        ),
      ),
    );
  }
}


