import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

Widget text(
    {required String text,
    required double size,
    Color? color,
    boldText = "",
    TextOverflow? overflow,
    fontFamily = "",
    maxLines = 9}) {
  return Text(
    text,
    overflow: overflow,
    style: TextStyle(
        color: color ?? AppColors.textBlackColor,
        fontSize: size,
        fontWeight: boldText == "" ? FontWeight.normal : boldText,
        fontFamily: fontFamily == "" ? 'SF-Regular' : fontFamily,
        decoration: TextDecoration.none),
    maxLines: maxLines,
  );
}
