import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/christmasgift3.json'),
    );
  }
}
