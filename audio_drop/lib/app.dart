import 'package:audio_drop/app_ui/widgets/navigator_widget.dart';
import 'package:audio_drop/app_utils/light_theme_color.dart';
import 'package:audio_drop/controller_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Audio Drop',
      theme: ThemeData(
        scaffoldBackgroundColor: LightThemeColor.blueFour,
        appBarTheme: AppBarTheme(
          color: LightThemeColor.blueThree,
          foregroundColor: LightThemeColor.blueOne
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(fontSize: 15,),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: LightThemeColor.blueOne
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                  color: LightThemeColor.blueTwo
              )
          )
        )
      ),
      home: const NavigatorWidget(),
      initialBinding: ControllerBindings(),
    );
  }
}
