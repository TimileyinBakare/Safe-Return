import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safereturn/app/constants/color.dart';
import 'package:safereturn/app/widgets/custom_button.dart';

import '../../../constants/asset.dart';
import '../../../widgets/custom_textfield.dart';

class Register extends StatelessWidget {
  static const routeName = "register";

  const Register({super.key});

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
                      height: 70,
                    ),
                    Row(
                      children: [
                        FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: SvgPicture.asset(
                            AppAssets.arrow,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const Spacer(),
                        FadeInLeft(
                          duration: const Duration(seconds: 1),
                          child: const Text(
                            "New Account",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: FadeInUp(
                            duration: const Duration(seconds: 1),
                            child: const CustomTextField(
                              hint: "First Name",
                              iconColor: Color(AppColor.primaryColor),
                              prefixIcon: null,
                              obscure: false,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FadeInUp(
                            duration: const Duration(seconds: 1),
                            child: const CustomTextField(
                              hint: "Last Name",
                              iconColor: Color(AppColor.primaryColor),
                              prefixIcon: null,
                              obscure: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInUp(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(AppColor.fillColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            width: 1,
                            color: const Color(AppColor.primaryColor),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.date_range,
                              color: Color(AppColor.primaryColor),
                            ),
                            Text(
                              "Date of birth",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: FadeInUp(
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(AppColor.fillColor),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(AppColor.primaryColor),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.female,
                                    color: Color(AppColor.primaryColor),
                                  ),
                                  Text(
                                    "Female",
                                    style: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: FadeInUp(
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(AppColor.fillColor),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(AppColor.primaryColor),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.male,
                                    color: Color(AppColor.primaryColor),
                                  ),
                                  Text(
                                    "Male",
                                    style: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Email",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: null,
                        obscure: false,
                      ),
                    ),
                    const SizedBox(height: 30),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Password",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: null,
                        obscure: true,
                      ),
                    ),
                    const SizedBox(height: 30),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Confirm Password",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: null,
                        obscure: true,
                      ),
                    ),
                    const SizedBox(height: 30),
                    FadeInUp(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(AppColor.primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            width: 1,
                            color: const Color(AppColor.primaryColor),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Confirm",
                              style: GoogleFonts.poppins(
                                  color: const Color(AppColor.fillColor)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: const CustomButton(
                            color: Color(AppColor.primaryColor),
                            fontWeight: FontWeight.bold,
                            text: "Back",
                          ),
                        ),
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
