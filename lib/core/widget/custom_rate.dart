import 'package:flutter/material.dart';


class CustomRate extends StatelessWidget {
  const CustomRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 18,
                  ),
                ],
              ) ;
  }
}