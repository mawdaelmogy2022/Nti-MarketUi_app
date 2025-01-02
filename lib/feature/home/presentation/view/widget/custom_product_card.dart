import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';
import 'package:marketui_app/core/widget/custom_new_price.dart';
import 'package:marketui_app/core/widget/custom_old_price.dart';
import 'package:marketui_app/core/widget/custom_product_image.dart';
import 'package:marketui_app/core/widget/custom_product_title.dart';
import 'package:marketui_app/core/widget/custom_rate.dart';
import 'package:marketui_app/core/widget/custom_rate_text.dart';
import 'package:marketui_app/feature/details/presentation/view/screen/details_view.dart';
import 'package:marketui_app/model/product_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsView(productModel:productModel ,);
        }));
      },
      child: Container(
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
                CustomProductImage(productImage: productModel.productImage),
                const Spacer(),
                SizedBox(
                    width: 90,
                    child:
                        CustomProductTitle(title: productModel.productTitle)),
                const Spacer(),
               const Row(
                  children: [
                     CustomRate(),
                    CustomRateText()
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    CustomNewPrice(newPrice: productModel.newPrice),
                    CustomOldPrice(oldPrice: productModel.oldPrice),
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
      ),
    );
  }
}
