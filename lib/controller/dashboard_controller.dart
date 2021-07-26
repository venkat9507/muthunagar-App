import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DashboardController extends GetxController  {
  static DashboardController instance = Get.find();
  TabController controller;
  RxInt selectedIndex = 0.obs;
  RxString headerText = 'Home'.obs;

  headerTextChoosing()  {
    if(selectedIndex == 0){
      headerText .value= 'Home';
    }
    else if( selectedIndex == 1 ) {
      headerText .value= 'Celebration';
    }
    else if( selectedIndex == 2 ) {
      headerText .value= 'News';
    }
    else if( selectedIndex == 3 ) {
      headerText .value= 'Ads';
    }
    else if( selectedIndex == 4 ) {
      headerText .value= 'List';
    }
    else if( selectedIndex == 5 ) {
      headerText .value= 'Service';
    }
    else if( selectedIndex == 6 ) {
      headerText .value= 'Offer';
    }
  }
}