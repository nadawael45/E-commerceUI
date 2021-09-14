import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
   String? img;
   String? itemName;
   String? itemDesc;
   String? itemPrice;


   CustomCard({this.img, this.itemName, this.itemDesc, this.itemPrice});

   @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Image.asset(
                '$img',
                fit: BoxFit.fill,
                height: 80,
                width: 80,
              ),
              SizedBox(height: 6,),
              Text(
                '$itemName',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6,),

              Text(
                '$itemDesc',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 6,),

              Text(
                '$itemPrice',
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
