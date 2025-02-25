import 'package:flutter/material.dart';
import 'package:war_house/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor, required this.textColor,
  });

  final VoidCallback onPressed;
  final String text;
  final String fontFamily = 'Cairo';
  final Color backgroundColor ;
  final Color textColor ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 55,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
          onPressed: onPressed,
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
