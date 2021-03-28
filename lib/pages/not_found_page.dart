import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: 100,
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Page not found',
                  textStyle: Theme.of(context).textTheme.headline3,
                ),
              ],
              isRepeatingAnimation: true,
            ),
          ),
        ],
      ),
    );
  }
}
