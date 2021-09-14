import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashnavypackages/Widgets/customCard.dart';
import 'package:splashnavypackages/models/categoryModel.dart';
import 'package:splashnavypackages/models/product_model.dart';
import 'package:card_swiper/card_swiper.dart';
class HomeView extends StatelessWidget {
  List<String>imgList=[
    'assets/images/hh1.jpg',
    'assets/images/hh2.jpg',
    'assets/images/hh3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
        Column(children: [
          TextField(decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.grey[400],
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(15.0),
          ),),),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 100,
            child:  ListView.separated(
                separatorBuilder: (context,index)=>SizedBox(width: 16,),
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
                itemBuilder: (_,index)=>Column(children: [
                  Image.asset(categoryList[index].img.toString(),width: 70,height: 70,fit: BoxFit.cover,),
                  SizedBox(height: 5,),
                  Text(categoryList[index].txt.toString(), style: GoogleFonts.alef(fontWeight:FontWeight.bold),)
                ],)),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Arrival',style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
              Text('See All',style:TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17))
            ],),
          SizedBox(height: 20,),
          Container(
            height: 180,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCard(
                  itemName: items[index].itemName,
                  img: items[index].img,
                  itemDesc: items[index].itemDesc,
                  itemPrice: items[index].itemPrice),
            ),
          ),
          SizedBox(height: 10,),

          Container(width: double.infinity,height: 150,
            child: Swiper(itemCount: imgList.length,itemBuilder: (context,index)=>Container(width: double.infinity,height: 100,
              child: Image.asset(imgList[index],fit: BoxFit.cover,width: double.infinity,height: 100,),),pagination: SwiperPagination(),),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCard(
                  itemName: items[index].itemName,
                  img: items[index].img,
                  itemDesc: items[index].itemDesc,
                  itemPrice: items[index].itemPrice),
            ),
          ),


        ],),
      ),);
  }
}
