import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:medicalk/constants/imagePage.dart';

import '../main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,

        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),centerBackground: true,
        background: [
          Image.asset(ImagePage.doc1,height: width*0.6,width: width*0.6,fit:BoxFit.fill,),
          Image.asset(ImagePage.doc2,height: width*0.6,width: width*0.6,fit: BoxFit.fill,),
          Image.asset(ImagePage.doc3,height: width*0.6,width: width*0.6,fit: BoxFit.fill,),
        ],

        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),

            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Consult only with a doctor you trust'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Find a lot of specialist doctors in one place'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: width*0.5,
                ),
                Text('Get connect our Online Consultation'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
