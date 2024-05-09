import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safereturn/app/config/routes/app_route.dart';
import 'package:safereturn/app/constants/color.dart';
import 'package:safereturn/app/modules/auth/view/login.dart';

import '../../../constants/asset.dart';
import '../../../widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splashscreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

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
              FadeInUp(
                duration: const Duration(seconds: 1),
                child: const Text(
                  "Safe Return",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FadeInDown(
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset(
                    AppAssets.onboarding,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              FadeInDown(
                  duration: const Duration(seconds: 1),
                  child: const Text("Bring Lost Smiles Home & Reunite Hearts")),
              const SizedBox(
                height: 70,
              ),
              FadeInDown(
                duration: const Duration(seconds: 1),
                child: CustomButton(
                  fontWeight: FontWeight.bold,
                  color: const Color(AppColor.primaryColor),
                  text: "Let's get started",
                  onclick: () => Navigator.pushReplacementNamed(
                    context,
                    AppRoute.login,
                  ),
                ),
              ),
              Flexible(
                child: Container(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 150,
                ),
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
