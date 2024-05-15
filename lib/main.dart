import 'package:flutter/material.dart';
import 'package:safereturn/app/config/routes/app_route.dart';
import 'package:safereturn/app/constants/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Area',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(AppColor.primaryColor),
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.splash,
      onGenerateRoute: AppRoute.generalRoute,
    );
  }
}
