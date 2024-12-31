import 'package:flutter/material.dart';
import 'package:marketui_app/feature/home/presentation/view/widget/homebody_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:HomebodyView() ,
      ),
    );
  }
}