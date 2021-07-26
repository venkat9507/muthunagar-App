import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../controller.dart';
import '../text_widget.dart';
ListView ChooseReligion() {
  return ListView.builder(
      itemCount: religionController.religionName.length,
      itemBuilder: (BuildContext context,int index){
        return
          Column(
            children:
            [
              InkWell(
                onTap: (){
                  print(religionController.religionName.indexOf(religionController.religionName[index]));
                  religionController.selectedReligionIndex.value = index;
                  print(religionController.selectedReligionIndex.value);
                  religionController.loadingScreen.value = true;
                  religionController.loadingScreen == true ?  Get.defaultDialog(title: 'Loading Please Wait',content: Loading(),backgroundColor: Colors.white70) : null;
                  FutureDelay(1000, religionController.loadingScreen.value = false,);

                },
                child: Obx(
                      ()=> Card(
                    elevation: 10,
                    color:religionController.religionName.indexOf(religionController.religionName[index]) == religionController.selectedReligionIndex.value ? Color(0xFF178DBC):Colors.white,
                    child: Padding(padding: EdgeInsets.all(16),
                      child:  customText(religionController.religionName.indexOf(religionController.religionName[index]) == religionController.selectedReligionIndex.value ? Colors.white: Colors.black, religionController.religionName[index].toString(), height * 0.05, FontWeight.bold),),
                  ),
                ),
              ),
            ],
          );

      });
}

ListView CelebrationTabBar() {
  return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context,int index){
        return
          Column(
            children: [
              ListTile(
                leading: Image.asset('assets/images/beauty.png'),
                title: customText(Colors.black, 'Wedding', height * 0.05, FontWeight.bold),
                subtitle:  customText(Colors.grey, '26-07-2021/12:00PM', height * 0.03, FontWeight.normal),
              ),
            ],
          );

      });
}
