import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';


class CustomProductTitle extends StatelessWidget {
  const CustomProductTitle({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: ColorsApp.color1,
            fontSize: 16,
            fontWeight: FontWeight.bold));
  }
}
