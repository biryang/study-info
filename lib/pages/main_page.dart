import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('stuFeed'),
                  Text('Contact Us'),
                ],
              ),
            ),
            Spacer(),
            Text('Technologies'),
            SizedBox(height: 20),
            Text('Flutter, React 등 다양한 개발과 새로운 기술을 탐구해 나갑니다.'),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 600,
                  height: 100,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 16 / 10,
                      viewportFraction: 0.3,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      SvgPicture.asset('images/cpp.svg', height: 100),
                      SvgPicture.asset('images/react.svg', height: 100),
                      SvgPicture.asset('images/flutter.svg', height: 100),
                      SvgPicture.asset('images/aws.svg', height: 100),
                      SvgPicture.asset('images/js.svg', height: 100),
                      SvgPicture.asset('images/vue.svg', height: 100),
                      SvgPicture.asset('images/firebase.svg', height: 100),
                      SvgPicture.asset('images/php.svg', height: 100),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Text('Footer')
          ],
        ),
      ),
    );
  }
}
