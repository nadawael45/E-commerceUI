import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashnavypackages/Widgets/customElevatedBtn.dart';
import 'package:splashnavypackages/Widgets/customTextFormField.dart';
import 'package:splashnavypackages/consants.dart';

import 'home_screen.dart';
class ForgetPass extends StatefulWidget {
  static String id='forgetpass';
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text( 'Back',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.indigo,),onPressed: (){Navigator.of(context).pop();},),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Recover\n Your Account',style: blackBoldTextStyle(),),
            ),
                SizedBox(height: 20,),
            CustomTextFormField(title: 'Enter Email or Phone No',prefix:Icons.person ,obscureTxt: false,),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomElevatedBtn('Next',()=>Navigator.popAndPushNamed(context, HomeScreen.id)),
            ),

          ],),
      ),
    );
  }
}
