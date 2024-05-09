import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function()? onclick;
  final FontWeight fontWeight;
  const CustomButton({
    super.key,
    this.onclick,
    required this.text,
    this.color,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclick,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: fontWeight,
          fontSize: 16,
        ),
      ),
    );
  }
}
