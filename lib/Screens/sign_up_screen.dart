import 'package:flutter/material.dart';
import 'package:splashnavypackages/Screens/sign_in_screen.dart';
import 'package:splashnavypackages/Widgets/customElevatedBtn.dart';
import 'package:splashnavypackages/Widgets/customTextFormField.dart';
import 'package:splashnavypackages/Widgets/questionTxt.dart';

import 'home_screen.dart';

class Signup extends StatefulWidget {
  static String id='Signup';
  bool? isClicked=false;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            CustomTextFormField(title: 'Enter Email',prefix: Icons.mail,obscureTxt: false,),
            SizedBox(height: 15,),
            CustomTextFormField(title: 'Enter phone No.',prefix: Icons.phone_android,obscureTxt: false,),
            SizedBox(height: 15,),
            CustomTextFormField(title: 'Enter Password',prefix: Icons.lock,
              suffix: widget.isClicked==true?Icons.visibility_off:Icons.remove_red_eye,function: (){
                setState(() {
                  widget.isClicked=! widget.isClicked!;
                });
              } ,obscureTxt: widget.isClicked,),
            SizedBox(height: 10,),
            QuestionTxt('Already have account?',()=>Navigator.popAndPushNamed(context,SignIn.id)),

            Spacer(),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomElevatedBtn('Create new account',()=>Navigator.popAndPushNamed(context, HomeScreen.id)),
            ),

          ],),
      ),),
    );
  }
}