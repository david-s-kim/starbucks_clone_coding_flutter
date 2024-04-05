import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('홈으로 돌아가기'),
      ),
    );
  }
}
