import 'package:get/get.dart';

class Homecontroller extends GetxController {
  int countVal = 0;
  increment(){
    countVal ++;
    update();
  }
}