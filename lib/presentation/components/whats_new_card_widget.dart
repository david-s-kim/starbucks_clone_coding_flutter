import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatsNewCardWidget extends StatelessWidget {
  const WhatsNewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/starbuckscard.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '새로운 카드가 출시되었습니다!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(2),
                  child: Text(
                    '새로운 카드를 만나보시고, 많은 혜택을 누려보세요!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
