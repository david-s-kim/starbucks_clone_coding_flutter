import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import '../components/promotion_card_widget.dart';
import '../components/whats_new_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _topContents(),
          SizedBox(height: 10),
          _middleContents(),
          SizedBox(height: 10),
          _secondMiddleContents(),
          SizedBox(height: 10),
          _promotionCardWidget(),
          SizedBox(height: 10),
          _whatsNewCardWidget(),
        ],
      ),
    );
  }

  Widget _topContents() {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(
            'assets/images/christmasBG.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          child: SizedBox(
            height: 200,
            child: Lottie.asset('assets/lottie/christmasTree.json'),
          ),
        ),
        const Positioned(
          top: 110,
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(children: [
            Text(
              '스타벅스 케이크와 함께\n 2023년을 마무리해요!',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 24,
              ),
            ),
          ]),
        ),
        const Positioned(
          top: 170,
          left: 300,
          child: Row(
            children: [
              Text(
                '내용보기',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.black87,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _middleContents() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.star,
                  color: Colors.black38,
                ),
                Text(
                  'until Green Level',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 250,
              height: 10,
              child: LinearProgressIndicator(
                value: 0.8,
                backgroundColor: Colors.black12,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '4',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(' / ', style: TextStyle(color: Colors.black38)),
            Text(
              '5',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            Icon(
              Icons.star,
              color: Colors.black38,
            ),
          ],
        )
      ],
    );
  }

  Widget _secondMiddleContents() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      child: Row(children: [
        SizedBox(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.mail_outline, color: Colors.black45),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'What\'\s New',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black45),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Icon(Icons.add_card, color: Colors.black45),
              SizedBox(
                width: 5,
              ),
              Text(
                'Coupon',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              )
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Icon(Icons.add_alert_outlined, color: Colors.black45),
        )
      ]),
    );
  }

  Widget _promotionCardWidget() {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: PromotionCardWidget(),
          );
        },
      ),
    );
  }

  Widget _whatsNewCardWidget() {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 300,
            height: 300,
            child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: WhatsNewCardWidget()),
          );
        },
      ),
    );
  }
}
