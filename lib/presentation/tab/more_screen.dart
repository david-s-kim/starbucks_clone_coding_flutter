import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Lottie.asset('assets/lottie/christmasgift4.json'),
    );
  }
}
