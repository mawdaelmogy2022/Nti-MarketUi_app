import 'package:flutter/material.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/custom_container_depaetment.dart';
import 'package:marketui_app/model/departments_model.dart';

class CustomListDepartment extends StatelessWidget {
  const CustomListDepartment({super.key,});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listDepartment.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left:  8.0),
              child: CustomContainerDepaetment(departmentModel: listDepartment[index]),
            );
          }),
    );
  }
}
