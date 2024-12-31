import 'package:flutter/material.dart';
import 'package:marketui_app/feature/home/presentation/view/screen/home_view.dart';

void main() {
  runApp(const MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
