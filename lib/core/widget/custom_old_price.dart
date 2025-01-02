import 'package:flutter/material.dart';

class CustomOldPrice extends StatelessWidget {
  const CustomOldPrice({super.key,required this.oldPrice});
final String oldPrice;
  @override
  Widget build(BuildContext context) {
    return Text( oldPrice ,
                    style:const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough),
                  ) ;
     }
}