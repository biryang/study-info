import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  LinePainter({this.count});

  final int count;

  @override
  void paint(Canvas canvas, Size size) {
    final paintGrey = Paint()..color = Colors.grey;
    var backGrey =
        RRect.fromLTRBR(0, 0, size.width, size.height, Radius.circular(1));
    canvas.drawRRect(backGrey, paintGrey);

    final paintWhite = Paint()..color = Colors.white;
    var backWhite =
        RRect.fromLTRBR(5, 0, size.width, size.height, Radius.circular(1));
    canvas.drawRRect(backWhite, paintWhite);

    final paintLine = Paint()
      ..color = Colors.blueGrey
      ..strokeWidth = 1.0;

    for (int i = 0; i <= count; i++) {
      canvas.drawLine(Offset(0, 40.0 * i),
          Offset(size.width, 40.0 * i ), paintLine);
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return false;
  }
}
