import 'package:flutter/material.dart';

import '../app_utils/image_paths.dart';
import '../app_utils/light_theme_color.dart';

class PlaylistsScreen extends StatelessWidget {
  const PlaylistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int i) {
            return FittedBox(
              child: Column(
                children: [
                  Container(
                    height: (MediaQuery.sizeOf(context).width / 3.5),
                    width: (MediaQuery.sizeOf(context).width / 3.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                            image: AssetImage(ImagePaths.defaultThumbnail),
                            fit: BoxFit.fitWidth)),
                  ),
                  SizedBox(
                    width: (MediaQuery.sizeOf(context).width / 3.5),
                    child: Text(
                      "Playlist Title",
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
          }),
    );
  }
}
