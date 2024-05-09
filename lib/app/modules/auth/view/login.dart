import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safereturn/app/config/routes/app_route.dart';
import 'package:safereturn/app/constants/color.dart';
import 'package:safereturn/app/widgets/custom_button.dart';

import '../../../constants/asset.dart';
import '../../../widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  static const routeName = "login";
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Image(
              image: AssetImage(AppAssets.onboarding1),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const Text(
                        "Safe Return",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SvgPicture.asset(
                        AppAssets.loginIlustration1,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: const Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Email",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Password",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: Icon(Icons.lock),
                        obscure: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, AppRoute.forgretpass),
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const CustomButton(
                        color: Color(AppColor.primaryColor),
                        fontWeight: FontWeight.bold,
                        text: "Log In",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: const Text(
                          "Or Continue With",
                          style: TextStyle(
                            color: Color.fromARGB(255, 133, 136, 136),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeInLeft(
                            duration: const Duration(seconds: 1),
                            child: SvgPicture.asset(AppAssets.facebook)),
                        const SizedBox(
                          width: 40,
                        ),
                        FadeInLeft(
                            duration: const Duration(seconds: 1),
                            child: SvgPicture.asset(AppAssets.google)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: CustomButton(
                        onclick: () =>
                            Navigator.pushNamed(context, AppRoute.register),
                        color: const Color(AppColor.secondaryColor),
                        fontWeight: FontWeight.normal,
                        text: "Sign Up",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
