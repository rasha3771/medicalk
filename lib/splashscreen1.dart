
import 'package:flutter/material.dart';
import 'package:medicalk/constants/imagePage.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';


import '../main.dart';

class splasscreenMa extends StatefulWidget {
  const splasscreenMa({super.key});

  @override
  State<splasscreenMa> createState() => _splasscreenMaState();
}

class _splasscreenMaState extends State<splasscreenMa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColourTheme.thirdColor,
      body: OnBoardingScreen(
        onSkip: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => signIn(),));
        },
        showPrevNextButton:true ,
        showIndicator: true,
        // backgourndColor: ColourTheme.thirdColor,
        // activeDotColor: ColourTheme.seventhColor,
        // deactiveDotColor: ColourTheme.fourthColor,
        // iconColor:ColourTheme.secondaryColor ,
        // iconSize:width*0.09 ,
        animationDuration:Duration(seconds: 2) ,
        leftIcon: Icons.arrow_circle_left_rounded ,
        rightIcon: Icons.arrow_circle_right_rounded ,

        pages: [
          OnBoardingModel(
            image: Image.asset(ImagePage.doc1),
            title:"Consult only with a doctor you trust",

          ),
          OnBoardingModel(
            image: Image.asset(ImagePage.doc2),
            title: "Find a lot of specialist doctors in one place",

          ),
          OnBoardingModel(
            image: Image.asset(ImagePage.doc3),
            title: "Get connect our Online Consultation",

          ),
        ],

      ),
    );
  }
}