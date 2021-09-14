import 'package:flutter/material.dart';
class QuestionTxt extends StatelessWidget {
  String? txt;
  VoidCallback? func;

  QuestionTxt(this.txt, this.func);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end,children: [
      InkWell(onTap: func,
          child: Text(txt!,style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),))
    ],);
  }
}
