import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketui_app/core/style/string_app.dart';
import 'package:marketui_app/core/style/text_style.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/custom_gridview_product.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/custom_image.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/custom_list_department.dart';

class HomebodyView extends StatelessWidget {
  const HomebodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 16,top: 24,left: 16),
        child: Column(
          children: [
         const  CustomImage(),
        const  SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringApp.titledepartment,
                  style: textstyle24(),
                ),
                  Text(
                    StringApp.titlealldepartment,
                  style:textstyle18(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomListDepartment(),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  StringApp.titleallproduct,
                  style: textstyle24(),
                ),
              ],
            ),
            const CustomGridviewProduct(),
          ],
        ),
      ),
    );
  }
}
