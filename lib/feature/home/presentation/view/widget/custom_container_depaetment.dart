import 'package:flutter/material.dart';
import 'package:marketui_app/model/departments_model.dart';

class CustomContainerDepaetment extends StatelessWidget {
  const CustomContainerDepaetment({super.key,required this.departmentModel});
  final  DepartmentModel departmentModel ;
  @override
  Widget build(BuildContext context) {
    return  Container(
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: departmentModel.backgroundColor,
                ),
                child:  Center(
                    child: Text(
                            departmentModel.departmentName,
                  style:const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700,fontSize: 16),
                )),
              );
  }
}