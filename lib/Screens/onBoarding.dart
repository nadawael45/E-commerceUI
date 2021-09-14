import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splashnavypackages/Screens/sign_in_screen.dart';
import 'package:splashnavypackages/Screens/sign_up_screen.dart';
import 'package:splashnavypackages/models/pageViewModel.dart';

import '../consants.dart';
import 'home_screen.dart';
class OnBoarding extends StatefulWidget {
  static String id='on Boarding';

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {

    int currentIndex=0;
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.25,),
            Expanded(
               child: Center(
                child: PageView.builder(
                    itemBuilder: (_,index)=>Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Image.asset(boardList[index].img.toString(),width: double.infinity,height: 200,),
                        ),
                        Text(boardList[index].text1.toString(),style:blackBoldTextStyle()),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Text(boardList[index].text2.toString(),style:TextStyle(color: Colors.black,fontSize: 18)),
                        ),

                      ],
                    ),
                  itemCount: boardList.length,
                  controller: controller,

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentIndex==1? Text(''):InkWell(onTap:()=> Navigator.popAndPushNamed(context, SignIn.id),
                    child: Text('Skip',style:TextStyle(color: Colors.indigo,fontSize: 16) ,)),
                SmoothPageIndicator(

                    controller: controller,  // PageController
                    count:  boardList.length,
                    effect:  ExpandingDotsEffect(  dotHeight: 10,
                      dotWidth: 10,),

                  // your preferred effect
                    onDotClicked: (index){
                   setState(() {
                     currentIndex=index;
                     print('current index='+'$currentIndex');

                   });
                    }


                ),
                currentIndex==1?  Text(''):
                InkWell(onTap: ()=>Navigator.popAndPushNamed(context, Signup.id),
                    child: Text('Done',style:TextStyle(color: Colors.indigo,fontSize: 16) ,)),

              ],
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

}
