import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlNiYJqHwmCQXA0mYlf4klCPuTophYH086Cg&s'),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(8)),) ;
  }
}