import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/database/local_database/cache.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utilities/enums.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 1), () {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context,
  //         MyShared.getBoolean(key: MySharedKeys.onBoarding)
  //             ? AppRoutes.loginScreenRoute
  //             : AppRoutes.onBoardingScreenRoute,
  //         (route) => false);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/images/splash/blur.svg'),
            SvgPicture.asset('assets/images/splash/jobsque_logo.svg'),
          ],
        ),
      ),
    ));
  }
}
