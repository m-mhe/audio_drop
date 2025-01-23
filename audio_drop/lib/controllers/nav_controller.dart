import 'package:get/get.dart';

class NavController extends GetxController{
  int _index = 0;
  int get currentIndex => _index;

  void changeIndex(int i){
    _index = i;
    update();
  }
}