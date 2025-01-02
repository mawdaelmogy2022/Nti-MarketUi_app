import 'package:flutter/material.dart';

class CustomNewPrice extends StatelessWidget {
  const CustomNewPrice({super.key,required this.newPrice});
  final String newPrice;
  @override
  Widget build(BuildContext context) {
    return Text(
      newPrice,
      style:
          const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
    );
  }
}
