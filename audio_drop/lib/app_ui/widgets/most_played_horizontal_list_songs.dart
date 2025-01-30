import 'package:flutter/material.dart';
import '../../app_utils/image_paths.dart';
import '../../app_utils/light_theme_color.dart';

class MostPlayedHorizontalListSongs extends StatelessWidget {
  const MostPlayedHorizontalListSongs({
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: ((MediaQuery.sizeOf(context).width /
                              3.5) /
                              1.1) /
                              2.5,
                          width:
                          (MediaQuery.sizeOf(context).width / 3.5),
                          decoration: BoxDecoration(
                              color: LightThemeColor.blueTwo,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7),
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14))),
                          child: Center(
                            child: Text(
                              "${(((69 - i) * 69) + 478)}",
                              style: TextStyle(
                                  color: LightThemeColor.blueFour,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
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