import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReligionController extends GetxController {
  static ReligionController instance = Get.find();
  RxList religionName = ['Hindu', 'Muslim','Christian'].obs;
  RxInt selectedReligionIndex = 0.obs;
  RxBool loadingScreen = false.obs;
}