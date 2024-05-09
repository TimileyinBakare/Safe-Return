import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safereturn/app/config/routes/app_route.dart';
import 'package:safereturn/app/constants/color.dart';
import 'package:safereturn/app/widgets/custom_button.dart';

import '../../../constants/asset.dart';
import '../../../widgets/custom_textfield.dart';

class ForgetPassword extends StatelessWidget {
  static const routeName = "forgetpass";
  const ForgetPassword({super.key});

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
                    const SizedBox(height: 30),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SvgPicture.asset(
                        AppAssets.forgetpass,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: Text(
                          "Forgot \nPassword?",
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: Text(
                          "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Enter the phone number",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: null,
                        fillColor: false,
                        isdensed: false,
                        keyboard: TextInputType.number,
                        obscure: false,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, AppRoute.login),
                          child: Row(
                            children: [
                              Text(
                                "Remember the password?",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                              Text(
                                "Log In",
                                style: GoogleFonts.poppins(
                                  color: const Color(AppColor.primaryColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, AppRoute.otp),
                          child: const CustomButton(
                            color: Color(AppColor.primaryColor),
                            fontWeight: FontWeight.bold,
                            text: "Continue",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
