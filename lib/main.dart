import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'features/splash_screen/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: ,
        home: Splash(),
      );
    });
  }
}
