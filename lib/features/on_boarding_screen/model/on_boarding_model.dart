import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardingModel {
  String image;
  Text title;
  String body;

  OnBoardingModel(this.image, this.title, this.body);

  static List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
        'assets/images/on_boarding/page_one.svg',
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'Find a job, and ',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111827))),
          TextSpan(
              text: 'start building ',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3366FF))),
          TextSpan(
              text: 'your career from now on',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111827)))
        ])),
        'Explore over 25,924 available job roles and upgrade your operator now.'),
    OnBoardingModel(
        'assets/images/on_boarding/page_two.svg',
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'Hundreds of jobs are waiting for you to ',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111827))),
          TextSpan(
              text: 'join together',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3366FF))),
        ])),
        'Immediately join us and start applying for the job you are interested in.'),
    OnBoardingModel(
        'assets/images/on_boarding/page_three.svg',
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'Get the best ',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111827))),
          TextSpan(
              text: 'choice for the job ',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3366FF))),
          TextSpan(
              text: 'you\'ve always dreamed of',
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display-Medium.ttf',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111827)))
        ])),
        'The better the skills you have, the greater the good job opportunities for you.'),
  ];
}
