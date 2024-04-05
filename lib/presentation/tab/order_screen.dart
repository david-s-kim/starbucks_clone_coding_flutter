import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/christmasgift2.json'),
    );
  }
}
