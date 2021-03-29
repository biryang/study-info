import 'package:flutter/material.dart';
import 'package:study_info/pages/line_painter.dart';

class NotebookPage extends StatefulWidget {
  @override
  _NotebookPageState createState() => _NotebookPageState();
}

class _NotebookPageState extends State<NotebookPage> {
  int numLines = 0;

  @override
  Widget build(BuildContext context) {
    // final myController = TextEditingController();
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Container(
                height: 1000,
                child: Stack(
                  children: [
                    CustomPaint(
                      foregroundPainter: LinePainter(count: numLines+1),
                      child: Container(),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30,left: 10),
                      child: TextField(
                        // controller: myController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: TextStyle(fontSize: 20, height: 2),
                        decoration: InputDecoration(border: InputBorder.none),
                        onChanged: (e) {
                          setState((){
                            numLines = '\n'.allMatches(e).length + 1;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
