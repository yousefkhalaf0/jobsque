import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/on_boarding_model.dart';
import '../../view_model/on_boarding_cubit.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: SvgPicture.asset('assets/images/splash/jobsque_logo.svg'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 2.w),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontFamily: 'SF-Pro-Display-Regular.ttf',
                        fontSize: 16.sp,
                        color: const Color(0xff6B7280)),
                  )),
            )
          ],
        ),
        body: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: PageView.builder(
                      controller:
                          OnBoardingCubit.get(context).onBoardingController,
                      itemBuilder: (context, index) => OnBoardingWidget(
                          onBoardingModel:
                              OnBoardingModel.onBoardingData[index]),
                      itemCount: OnBoardingModel.onBoardingData.length,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (index) {
                        OnBoardingCubit.get(context).changePageView(index);
                      }),
                ),
                SizedBox(height: 1.h),
                SmoothPageIndicator(
                    controller:
                        OnBoardingCubit.get(context).onBoardingController,
                    count: OnBoardingModel.onBoardingData.length,
                    effect: const ScrollingDotsEffect(
                      activeDotColor: Color(0xff3366FF),
                      dotColor: Color(0xffADC8FF),
                      spacing: 3,
                      dotWidth: 8,
                      dotHeight: 8,
                    )),
                SizedBox(height: 2.h),
                ElevatedButton(onPressed: (){}, child: Text(''))
              ],
            );
          },
        ),
      ),
    );
  }
}
