
import 'package:flutter/material.dart';

import '../core/color.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? iconColor;
  final bool obscure;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    this.hint,
    this.prefixIcon,
    this.iconColor,
    this.suffixIcon,
    this.controller,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
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
