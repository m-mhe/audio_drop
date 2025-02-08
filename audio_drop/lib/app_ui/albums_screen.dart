import 'package:audio_drop/controllers/audio_fetch_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import '../app_utils/image_paths.dart';
import '../app_utils/light_theme_color.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<AudioFetchController>(
        builder: (controller) {
          return Visibility(
            visible: controller.albums.isNotEmpty,
            replacement: Center(
                child: Text(
                  "No Album Found",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: LightThemeColor.blueOne.withAlpha(100)),
                )),
            child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int i) {
                  return FittedBox(
                    child: Column(
                      children: [
                        QueryArtworkWidget(id: controller.albums[i].id, type: ArtworkType.ALBUM,
                          artworkBorder: BorderRadius.circular(7),
                          artworkWidth: MediaQuery.sizeOf(context).width / 3.5,
                          artworkHeight: MediaQuery.sizeOf(context).width / 3.5,
                          artworkFit: BoxFit.cover,
                        ),
                        /*Container(
                          height: (MediaQuery.sizeOf(context).width / 3.5),
                          width: (MediaQuery.sizeOf(context).width / 3.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                  image: AssetImage(ImagePaths.defaultThumbnail),
                                  fit: BoxFit.fitWidth)),
                        ),*/
                        SizedBox(
                          width: (MediaQuery.sizeOf(context).width / 3.5),
                          child: Text(
                            controller.albums[i].album,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: LightThemeColor.blueOne),
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                  );
                },
              itemCount: controller.albums.length,
            ),
          );
        }
      ),
    );
  }
}
