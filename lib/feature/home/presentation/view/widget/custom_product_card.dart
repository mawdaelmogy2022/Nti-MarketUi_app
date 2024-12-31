import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';
import 'package:marketui_app/model/product_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key,required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      //   width: MediaQuery.of(context).size.width * .5,
      //   height: MediaQuery.of(context).size.height * .4,
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Image.network(
                productModel.productImage,
                width: 120,
                height: 120,
              ),
              const Spacer(),
               SizedBox(
                width: 90,
                child: Text(
                  productModel.productTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:const TextStyle(
                      color: ColorsApp.color1,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              const Row(
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
                  Text(
                    '(3/5)',
                    style: TextStyle(
                        color: ColorsApp.color1,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const Spacer(),
               Row(
                children: [
                  Text(
                   productModel.newPrice ,
                    style: const TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    productModel.oldPrice,
                    style:const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        color: ColorsApp.color1,
                        borderRadius: BorderRadius.circular(32)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'اضافة الي السلة',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
