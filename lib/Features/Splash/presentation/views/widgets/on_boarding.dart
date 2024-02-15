import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

import '../../../../../core/utils/app_router.dart';

class OnBoardingBody extends StatelessWidget {
  final List<Introduction> list = [

    Introduction(
      imageHeight: 250,
      titleTextStyle: const TextStyle(fontSize: 20,color: kPrimaryColor),
      subTitleTextStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
      title: 'Read',
      subTitle: 'Search for a book in any field and read it with all of exciting ',
      imageUrl: 'assets/images/onBoarding_1.png',

    ),
    Introduction(
      imageHeight: 250,
      titleTextStyle: const TextStyle(fontSize: 20,color: kPrimaryColor),
      subTitleTextStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
      title: 'Enjoy',
      subTitle: 'You will recommend a various books to your friends based om your preferences',
      imageUrl: 'assets/images/onBoarding_2.png',
    ),
  ];

   OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color.fromARGB(255, 213, 184, 231),
      foregroundColor: const Color.fromARGB(255, 89, 72, 127),
      introductionList: list,
      onTapSkipButton: ()
      {
        GoRouter.of(context).push(AppRouter.kHomeView);

      },
      skipTextStyle: const TextStyle(
        color: Color.fromARGB(255, 89, 72, 127),
        fontSize: 18,
      ),
    );
  }}