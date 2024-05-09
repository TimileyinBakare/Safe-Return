import 'package:flutter/material.dart';

import '../constants/color.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? iconColor;
  final bool obscure;
  final TextAlign? hintAlign;
  final bool? fillColor;
  final TextInputType? keyboard;
  final bool? isdensed;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    this.hint,
    this.prefixIcon,
    this.iconColor,
    this.suffixIcon,
    this.controller,
    this.hintAlign = TextAlign.start,
    this.obscure = false,
    this.fillColor = true,
    this.isdensed = true,
    this.keyboard = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboard,
      textAlign: hintAlign!,
      decoration: InputDecoration(
        isDense: isdensed,
        contentPadding: const EdgeInsets.all(8),
        filled: fillColor,
        fillColor: const Color(
          AppColor.fillColor,
        ),
        hintText: hint,
        prefixIcon: prefixIcon,
        prefixIconColor: iconColor,
        suffix: suffixIcon,
        suffixIconColor: iconColor,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color(
              AppColor.borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
