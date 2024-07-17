import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'core/database/local_database/cache.dart';
import 'core/routing/router.dart';
import 'features/splash_screen/view/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  await MyShared.init();
  runApp(
      //device preview
      DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
  //   const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        //device preview
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: onGenerateRoutes,
        home: const Splash(),
      );
    });
  }
}
