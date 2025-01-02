import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';

class CustomRateText extends StatelessWidget {
  const CustomRateText({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Text(
                    '(3/5)',
                    style: TextStyle(
                        color: ColorsApp.color1,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600),
                  );
  }
}