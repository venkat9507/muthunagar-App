import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/firebase_constant.dart';
import 'package:muthunagar/controller/celebration_controller.dart';
import 'package:muthunagar/controller/dashboard_controller.dart';
import 'package:muthunagar/controller/login_controller.dart';
import 'package:muthunagar/controller/religion_controller.dart';
import 'package:muthunagar/screens/dashboard.dart';
import 'package:muthunagar/screens/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) async {
    Get.put(LoginController());
    Get.put(DashboardController());
    Get.put(CelebrationController());
    Get.put(ReligionController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

