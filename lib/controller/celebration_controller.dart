import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CelebrationController extends GetxController {
  static CelebrationController instance = Get.find();
  TabController controller;
  RxInt selectedIndex = 0.obs;
}