import 'package:flutter/material.dart';

import '../../domain/entities/number_trivia.dart';

class TriviaDisplay extends StatelessWidget {
  final NumberTrivia numberTrivia;
  TriviaDisplay({@required this.numberTrivia});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numberTrivia.number.toString(),
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Text(
                numberTrivia.text,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
