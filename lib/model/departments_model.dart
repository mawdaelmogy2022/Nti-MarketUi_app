import 'package:flutter/material.dart';
import 'package:marketui_app/core/style/colors_app.dart';

class DepartmentModel {
  final String departmentName;
  final Color backgroundColor;
  DepartmentModel(
      {required this.departmentName, required this.backgroundColor});
}

List<DepartmentModel> listDepartment = [
  DepartmentModel(
      departmentName: 'الالكترونات', backgroundColor: ColorsApp.color1),
  DepartmentModel(departmentName: 'الازياء', backgroundColor: ColorsApp.color2),
  DepartmentModel(
      departmentName: 'المنزل والمطبخ', backgroundColor: ColorsApp.color3),
  DepartmentModel(
      departmentName: 'المنزل والمطبخ', backgroundColor: ColorsApp.color5),
  DepartmentModel(
      departmentName: 'الالكترونات', backgroundColor: ColorsApp.color1),
  DepartmentModel(departmentName: 'الازياء', backgroundColor: ColorsApp.color2),
  DepartmentModel(
      departmentName: 'المنزل والمطبخ', backgroundColor: ColorsApp.color3),
  DepartmentModel(
      departmentName: 'المنزل والمطبخ', backgroundColor: ColorsApp.color5),
];
