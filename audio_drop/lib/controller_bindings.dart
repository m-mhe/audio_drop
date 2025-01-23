import 'package:audio_drop/controllers/nav_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NavController());
  }

}