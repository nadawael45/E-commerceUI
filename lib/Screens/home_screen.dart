import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:splashnavypackages/Screens/cart_view.dart';
import 'package:splashnavypackages/Screens/fav_view.dart';
import 'package:splashnavypackages/Screens/home_view.dart';
import 'package:splashnavypackages/Widgets/customDrawer.dart';

class HomeScreen extends StatefulWidget {
  static String id='Home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Widget>listViews=[
    HomeView(),FavView(),CartView()
  ];
  var key=GlobalKey<ScaffoldState>();

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'Cart ',
            ),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),

        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                         key.currentState!.openDrawer();
                    });}, icon: Icon(Icons.menu)),
                  Badge(
                    badgeColor: Colors.red,
                    badgeContent: Text('0'),
                    child: Icon(Icons.shopping_cart, size: 30),)

              ],),
            ),
            Expanded(child: listViews[_currentIndex]),
          ],
        ),
      ),
    );
  }
}

