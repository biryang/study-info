import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                SvgPicture.asset('images/cpp.svg', height: 80),
                SvgPicture.asset('images/react.svg', height: 80),
                SvgPicture.asset('images/flutter.svg', height: 80),
                SvgPicture.asset('images/aws.svg', height: 80),
                SvgPicture.asset('images/js.svg', height: 80),
                SvgPicture.asset('images/vue.svg', height: 80),
                SvgPicture.asset('images/firebase.svg', height: 80),
                SvgPicture.asset('images/php.svg', height: 80),
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
