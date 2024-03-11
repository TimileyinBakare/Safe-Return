import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safereturn/shared/res/asset.dart';
import 'package:safereturn/shared/res/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(AppAssets.onboarding1),
          ),
          Column(
            children: [
              const Spacer(),
              const Text(
                "Safe Return",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Expanded(
                flex: 3,
                child: SvgPicture.asset(
                  AppAssets.onboarding,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Text("Bring Lost Smiles Home & Reunite Hearts"),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(
                      AppColor.button_Color,
                    ),
                  ),
                ),
                child: const Text(
                  "Let's get started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Flexible(
                child: Container(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 150),
                child: const Image(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(AppAssets.onboarding2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
