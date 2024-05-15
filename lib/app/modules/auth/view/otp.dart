import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:safereturn/app/config/routes/app_route.dart';
import 'package:safereturn/app/constants/color.dart';
import 'package:safereturn/app/widgets/custom_button.dart';

import '../../../constants/asset.dart';

class Otp extends StatelessWidget {
  static const routeName = "otp";
  const Otp({super.key});

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
                        AppAssets.confrim,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 40),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "OTP VERIFICATION",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "Enter the OTP sent to +(234)${9137110147}.",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: OTPTextField(
                        length: 4,
                        fieldWidth: 50,
                        obscureText: false,
                        onChanged: (value) {
                          // otpContr.text = value;
                        },
                        fieldStyle: FieldStyle.box,
                        style: const TextStyle(fontSize: 20),
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        onCompleted: (pin) {
                          // otpContr.text = pin.toString();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: InkWell(
                        // onTap: () =>
                        // Navigator.pushNamed(context, AppRoute.login),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn't receive code?",
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                            Text(
                              "Resend ",
                              style: GoogleFonts.poppins(
                                color: const Color(AppColor.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, AppRoute.login),
                          child: const CustomButton(
                            color: Color(AppColor.primaryColor),
                            fontWeight: FontWeight.bold,
                            text: "Submit",
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
