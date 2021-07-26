import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/screens/religion/christian_religion.dart';
import 'package:muthunagar/screens/religion/hindu_religion.dart';
import 'package:muthunagar/screens/religion/muslim_religion.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: Color(0xFF178DBC),
      size: 30,
    );
  }
}

FutureDelay(int time,dynamic onPressedBefore,) {

  return
      Future.delayed(Duration(milliseconds: time),(){
        onPressedBefore;
      }).then((value) {
        if(religionController.selectedReligionIndex == 0){
          Get.to(HinduReligion());
        }
        else if(religionController.selectedReligionIndex == 1){
          Get.to(MuslimReligion());
        }
        else if(religionController.selectedReligionIndex == 2){
          Get.to(ChristianReligion());
        }
      });
}