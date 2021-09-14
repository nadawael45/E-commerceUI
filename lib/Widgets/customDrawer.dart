import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashnavypackages/Screens/home_screen.dart';
import 'package:splashnavypackages/Screens/search_screen.dart';
import 'package:splashnavypackages/models/drawerModel.dart';
import 'package:splashnavypackages/provider.dart';
class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<DrawerModel>listDrawer=[
      DrawerModel(title: 'Home',icon: Icons.home,func:()=>Navigator.pushNamed(context, HomeScreen.id) ),
      DrawerModel(title: 'Search',icon: Icons.search,func:()=>Navigator.pushNamed(context, SearchScreen.id) ),
      DrawerModel(title: 'Change Theme',icon: Icons.color_lens,func:(){
        Provider.of<ThemeProv>(context,listen: false).changeTheme();
      } ),

    ];
//    return Drawer(
//      child: ListView.builder(itemCount:listDrawer.length ,
//          itemBuilder: (_,index)=>ListTile(
//        title: Text(listDrawer[index].title.toString()),
//        leading: Icon(listDrawer[index].icon,color: Colors.indigo,),
//        onTap: (){
//          listDrawer[index].func;
//        },
//      )),
//    );
  return Drawer(
    child: Center(
        child:InkWell(onTap:()=> Provider.of<ThemeProv>(context,listen: false).changeTheme() ,
        child: Text('ChangeTheme'))),
  );
  }
}
