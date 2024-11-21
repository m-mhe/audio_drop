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
        title: Text('Audio Player', style: Theme.of(context).textTheme.titleLarge,),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15,),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height/23,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.blueThree,
                          ),
                          child: Center(
                            child: Text(
                              'Home',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueTwo),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.red,
                          ),
                          child: Center(
                            child: Text(
                              'Song',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueFour),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.blueThree,
                          ),
                          child: Center(
                            child: Text(
                              'PlayLists',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueTwo),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.blueThree,
                          ),
                          child: Center(
                            child: Text(
                              'Folders',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueTwo),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.blueThree,
                          ),
                          child: Center(
                            child: Text(
                              'Artists',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueTwo),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: LightThemeColor.blueThree,
                          ),
                          child: Center(
                            child: Text(
                              'Albums',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: LightThemeColor.blueTwo),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index){
                      return ListTile(title: Text(index.toString()),);
                    },
                      itemCount: 454,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                color: LightThemeColor.blueThree,
              ),
            )
          ],
        ),
      ),
    );
  }
}
