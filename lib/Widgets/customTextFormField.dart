import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String? title;
  IconData? prefix;
  IconData? suffix;
  VoidCallback? function;
  bool? obscureTxt;

  CustomTextFormField({this.title, this.prefix, this.suffix, this.function, this.obscureTxt});

  @override
  Widget build(BuildContext context) {
    return Container(child: TextFormField(
      obscureText:obscureTxt! ,
    decoration: InputDecoration(
    hintText: title,
      focusColor: Colors.indigo,
        suffixIcon: IconButton( onPressed: function, icon: Icon(suffix),),
    prefixIcon: Icon(prefix),
    enabledBorder:  const OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.indigo, width: 0.0),),
    border: OutlineInputBorder(
    borderRadius:  BorderRadius.circular(15.0),
    borderSide:  BorderSide(color: Colors.indigo,),
    ),
    ),
    ));
  }
}
