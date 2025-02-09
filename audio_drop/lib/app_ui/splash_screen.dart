import 'package:audio_drop/app_ui/widgets/navigator_widget.dart';
import 'package:audio_drop/app_utils/image_paths.dart';
import 'package:audio_drop/controllers/audio_fetch_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _initialize() async {
    await Get.find<AudioFetchController>().fetchAudios();
    await Get.find<AudioFetchController>().fetchPlaylist();
    await Get.find<AudioFetchController>().fetchAlbum();
    Get.off(NavigatorWidget());
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          ImagePaths.appLogo,
          height: MediaQuery.sizeOf(context).height / 3,
          width: MediaQuery.sizeOf(context).height / 3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
