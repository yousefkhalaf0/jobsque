import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'core/database/local_database/cache.dart';
import 'core/routing/router.dart';
import 'features/on_boarding_screen/view/screens/on_boarding_screen.dart';
import 'features/on_boarding_screen/view_model/on_boarding_cubit.dart';
import 'features/splash_screen/view/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
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
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OnBoardingCubit(),
          ),
        ],
        child: MaterialApp(
          //device preview
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          // onGenerateRoute: onGenerateRoutes,
          home: const OnBoarding(),
        ),
      );
    });
  }
}
