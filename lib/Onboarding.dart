import 'package:flutter/material.dart';
import 'package:onboading/appimages.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  Widget pageBuilder(String image1,String text1,text2,) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Glovo Food',style: TextStyle(color: Colors.blue.shade700,fontSize: 35,fontWeight: FontWeight.bold),),

        Image.asset(image1),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 35,),
          child: Text(text1,style: TextStyle(
            color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,
          ),),
        ),

        SizedBox(height: 2,),
        Padding(
          padding:  EdgeInsets.only(left: 58,right: 60,),
          child: Text(text2,style: TextStyle(
            color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal,
          ),),
        ),
      ],
    );
  }
  PageController pageController=PageController();
  int CurrentIndex=0;
  @override
  Widget build(BuildContext){


    return Scaffold(
      body: Stack(
          children: [
            PageView(
              controller:pageController,
              onPageChanged: (index){
                CurrentIndex=index;
                setState(() {

                });
              },

              children: [
                //1st page
                pageBuilder(Appimages.picture1, 'Pick Up OR Delivery!','We make food ordering fast & free,'
                    'No matter if you order online or cash on delivery..', ),
                //2ndpage
                pageBuilder(Appimages.picture3, 'Fast Home Delivery','We are providing fastest home delivery service in main city,order online...\nOr cash on delivery!!!',),
                //3rdpage
                pageBuilder(Appimages.picture2, 'Get Delivery at Your\nDoor Step','Your Order Will be Immediatly Collected and send by our courier...\nThanks for Considering,\nOur delivery services.',),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children:[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 8,),
                      child: Text('Skip',style: TextStyle(color: Colors.blue.shade700),),
                    ),
                    SizedBox(width: 16,),
                    Padding(
                      padding:  EdgeInsets.only(right: 15,bottom: 8,),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Colors.blue.shade700,),
                        child: Text('Next',style: TextStyle(color: Colors.white),),
                        onPressed: (){},
                      ),
                    ),

                  ],
                )

              ],


            ),

          ]),

    );





//function widget-->local widget
//global widget
  }}

