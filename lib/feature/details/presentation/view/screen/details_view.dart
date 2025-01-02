import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/text_style.dart';
import 'package:marketui_app/core/widget/custom_new_price.dart';
import 'package:marketui_app/core/widget/custom_product_image.dart';
import 'package:marketui_app/core/widget/custom_product_title.dart';
import 'package:marketui_app/core/widget/custom_rate.dart';
import 'package:marketui_app/model/product_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key,required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Details',
          style: textstyle24(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: double.infinity,
              height: 250,
         child: CustomProductImage(productImage: productModel.productImage)),
         const  SizedBox(height: 50),
          CustomProductTitle(title: productModel.productTitle),
          Row(children: [
                    const  CustomRate(),
          const  Spacer(),
                     CustomNewPrice(newPrice: productModel.newPrice),
          ],)
        ],
      ),
    );
  }
}
