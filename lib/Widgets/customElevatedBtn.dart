import 'package:flutter/material.dart';
import 'package:splashnavypackages/Screens/home_screen.dart';
class CustomElevatedBtn extends StatelessWidget {
  String? txt;
  VoidCallback? func;

  CustomElevatedBtn(this.txt,this.func);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(


          style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.indigo),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),))),
            onPressed: func,

            child: Text(txt.toString())),
      ),
    );
  }
}
