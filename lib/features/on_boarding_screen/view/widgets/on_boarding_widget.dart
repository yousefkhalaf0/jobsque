import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '../../model/on_boarding_model.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, this.onBoardingModel});
  final OnBoardingModel? onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            onBoardingModel!.image,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: onBoardingModel!.title,
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Text(onBoardingModel!.body,
                style: TextStyle(
                    fontFamily: 'SF-Pro-Display-Regular.ttf',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff6B7280))),
          )
        ],
      ),
    );
  }
}
