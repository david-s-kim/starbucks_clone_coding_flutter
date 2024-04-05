import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromotionCardWidget extends StatelessWidget {
  const PromotionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/images/starbucksBG4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 20,
                    child: SizedBox(
                      child: Text(
                        '2023 WINTER e-Frequency',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    left: 20,
                    child: Text(
                      '[행사 기간] 11/2(Thu) ~ 12/31(Sun)',
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/starbucks1.png',
                              width: 60,
                              height: 60,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/starbucks2.png',
                              width: 70,
                              height: 70,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 210,
                    left: 20,
                    child: Text(
                      '증정품은 한정 수량 제작되어, 매장별 예약 가능 일자 및\n재고가 상이할 수 있으며 조기 소진될 수 있습니다.',
                      style: TextStyle(color: Colors.black45, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
