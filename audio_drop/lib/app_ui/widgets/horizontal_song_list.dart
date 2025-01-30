import 'package:flutter/material.dart';
import '../../app_utils/image_paths.dart';
import '../../app_utils/light_theme_color.dart';

class HorizontalSongList extends StatelessWidget {
  const HorizontalSongList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.sizeOf(context).width / 3.5)+24,
      child: ListView.builder(
          itemCount: 69,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, i) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Container(
                    height:
                    (MediaQuery.sizeOf(context).width / 3.5),
                    width: (MediaQuery.sizeOf(context).width / 3.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                            image:
                            AssetImage(ImagePaths.defaultThumbnail),
                            fit: BoxFit.fitWidth)),
                  ),
                  SizedBox(
                    width: (MediaQuery.sizeOf(context).width / 3.5),
                    child: Text(
                      "Audio Title",
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