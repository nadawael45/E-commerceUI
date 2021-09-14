import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splashnavypackages/Screens/home_screen.dart';
import 'package:splashnavypackages/Screens/onBoarding.dart';
import 'package:splashnavypackages/Screens/search_screen.dart';
import 'package:splashnavypackages/Screens/sign_in_screen.dart';
import 'package:splashnavypackages/Screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:splashnavypackages/provider.dart';
import 'Screens/forgetPass.dart';
import 'Screens/sign_up_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProv()),
      ],
      child:  MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:  Provider.of<ThemeProv>(context).isDark==false?Colors.white:Colors.grey[800],
      brightness:  Provider.of<ThemeProv>(context).isDark==false?Brightness.light:Brightness.dark,
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home:  SplashScreen(),
      routes:
      {
        OnBoarding.id:(context)=>OnBoarding(),
        SignIn.id:(context)=>SignIn(),
        HomeScreen.id:(context)=>HomeScreen(),
        ForgetPass.id:(context)=>ForgetPass(),
        Signup.id:(context)=>Signup(),
        SearchScreen.id:(context)=>SearchScreen(),



      }
      ,
    );
  }
}


