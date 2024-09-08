import 'dart:ffi';

import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonText extends StatelessWidget {
  const CustomButtonText(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.textColor,
      required this.backGorundColor,
      this.borderRadius,
      this.fontSize,
      this.splashColor});
  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final Color? splashColor;
  final Color backGorundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
              overlayColor: splashColor,
              backgroundColor: backGorundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              fontSize: fontSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
