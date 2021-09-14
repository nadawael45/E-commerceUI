import 'package:flutter/material.dart';
import 'package:splashnavypackages/Screens/forgetPass.dart';
import 'package:splashnavypackages/Widgets/customElevatedBtn.dart';
import 'package:splashnavypackages/Widgets/customTextFormField.dart';
import 'package:splashnavypackages/Widgets/questionTxt.dart';

import 'home_screen.dart';

class SignIn extends StatefulWidget {
  static String id='Signin';
  bool? isClicked=false;
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            CustomTextFormField(title: 'Enter Password',prefix: Icons.lock,
              suffix: widget.isClicked==true?Icons.visibility_off:Icons.remove_red_eye,function: (){
              setState(() {
                widget.isClicked=! widget.isClicked!;
              });
              } ,obscureTxt: widget.isClicked,),
            SizedBox(height: 10,),
            QuestionTxt('Forget Password?',()=>Navigator.popAndPushNamed(context,ForgetPass.id)),
            Spacer(),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomElevatedBtn('Sign in',()=>Navigator.popAndPushNamed(context, HomeScreen.id)),
            ),

        ],),
      ),),
    );
  }
}