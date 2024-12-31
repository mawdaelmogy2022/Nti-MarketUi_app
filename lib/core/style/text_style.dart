import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';

TextStyle? textstyle24() {
  return const TextStyle(
      color: ColorsApp.color1, fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle? textstyle18() {
  return const TextStyle(
      color: ColorsApp.color1,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline);
}
