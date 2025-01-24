import 'package:audio_drop/app_utils/image_paths.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.sizeOf(context).width / 3.5),
              child: ListView.builder(
                  itemCount: 69,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            height:
                                (MediaQuery.sizeOf(context).width / 3.5) / 1.1,
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
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(7),
                                          bottomRight: Radius.circular(7),
                                          topLeft: Radius.circular(14),
                                          topRight: Radius.circular(14))),
                                  child: Center(
                                    child: Text("${(((69 - i) * 69) + 478)}",
                                      style: TextStyle(color: LightThemeColor.blueFour, fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
