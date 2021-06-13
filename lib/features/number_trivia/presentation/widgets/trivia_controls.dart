import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/number_trivia_bloc.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key key,
  }) : super(key: key);

  @override
  _TriviaControlsState createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  String inputStr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Input a number',
            ),
            onChanged: (val) {
              setState(() {
                inputStr = val;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: dispatchConcrete,
                  child: Text('Search'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: dispatchRandom,
                  child: Text('Get random trivia'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void dispatchConcrete() {
    controller.clear();
    BlocProvider.of<NumberTriviaBloc>(context).add(
      GetTriviaForConcreteNumber(inputStr),
    );
  }

  void dispatchRandom() {
    controller.clear();
    BlocProvider.of<NumberTriviaBloc>(context).add(
      GetTriviaForRandomNumber(),
    );
  }
}
