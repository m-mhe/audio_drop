import 'package:audio_drop/app_ui/main_screen.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:flutter/material.dart';

import 'app_ui/songs_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Drop',
      theme: ThemeData(
        scaffoldBackgroundColor: LightThemeColor.blueFour,
        appBarTheme: AppBarTheme(
          color: LightThemeColor.blueThree,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(fontSize: 15,),
        )
      ),
      home: MainScreen(),
    );
  }
}
