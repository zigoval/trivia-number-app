import 'package:flutter/material.dart';

class MessageDisplay extends StatelessWidget {
  final String testToDisplay;
  MessageDisplay({@required this.testToDisplay});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Text(
          testToDisplay,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
