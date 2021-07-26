import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {










  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Obx(
          ()=> SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.green,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0,
                      // fontFamily: 'Agne',
                      color: Color(0xFF178DBC),
                    ),
                    child: AnimatedTextKit(
                      pause: Duration(milliseconds: 1000),
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('MUTHU NAGAR .COM',),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                 loginController.getMobileFormWidget(context) ,
                SizedBox(
                  height: size.height * 0.05,
                ),
            loginController.showLoading.value ? CircularProgressIndicator(backgroundColor: Colors.white,) : loginController.currentState != MobileVerificationState.SHOW_MOBILE_FORM_STATE ? loginController.getOtpFormWidget(context) : Container(),
            SizedBox(
                  height: size.height * 0.07,
                ),
                InkWell(
                  onTap: (){
                    if(loginController.currentState == MobileVerificationState.SHOW_OTP_FORM_STATE){
                      loginController.otpOnpressed();
                    }
                    else
                      {
                        Get.snackbar('Warning', 'Please get the OTP first');
                      }
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft:  Radius.circular(12),topRight:  Radius.circular(12),bottomRight:  Radius.circular(12),),
                      color: Color(0xFF178DBC),
                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child:Center(child: customText(Colors.white, 'Login', size.height * 0.03, FontWeight.bold),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
