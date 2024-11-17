import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/pages/create_cv_screen.dart';
import 'package:graduation_project_main/Features/HomeScreen/presentation/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName : (context) => const HomeScreen(),
            CreateCvScreen.routeName : (context) =>  const CreateCvScreen(),
          },
        );
      },
    );
  }
}
