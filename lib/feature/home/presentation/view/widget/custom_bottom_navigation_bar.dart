import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketui_app/feature/home/cubit/botton_navigation_bar_cubit/bottom_navigation_bar_cubit.dart';



class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
  BottomNavigationBarCubit cubit = BlocProvider.of(context);
    return   BottomNavigationBar(
              currentIndex: cubit.currentindex,
              onTap: (index) {
                cubit.changecurrentindex(value: index);
              },
              type: BottomNavigationBarType.fixed,
              // selectedLabelStyle: const TextStyle(color: Colors.blue),
              // unselectedLabelStyle: const TextStyle(color: Colors.black),
              items: const  [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'الرئيسية'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'الاقسام'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'السلة'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'المفضلة'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more), label: 'المزيد'),
              ],
            ) ;
  }
}
