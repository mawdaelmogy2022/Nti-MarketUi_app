
import 'package:flutter/material.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({super.key,required this.productImage});
  final String productImage;
  @override
  Widget build(BuildContext context) {
    return Image.network(productImage,
        width: 120,
      height: 120,
    );
  }
}
