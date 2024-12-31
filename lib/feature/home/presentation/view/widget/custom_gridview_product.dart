import 'package:flutter/material.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/custom_product_card.dart';
import 'package:marketui_app/model/product_model.dart';

class CustomGridviewProduct extends StatelessWidget {
  const CustomGridviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
              shrinkWrap: true, // لجعل الـ GridView يأخذ حجم محتوياته
              physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير الداخلي
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 4.5 / 7.6,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return  CustomProductCard(productModel: productList[index]);
              },
            ) ;
  }
}