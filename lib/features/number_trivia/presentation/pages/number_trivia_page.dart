import 'package:clean_arch_tdd_trivia_app/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../bloc/number_trivia_bloc.dart';
import '../widgets/widgets.dart';

class NumberTriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      body: BlocProvider(
        create: (ctx) => sl<NumberTriviaBloc>(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                      builder: (ctx, state) {
                        if (state is Empty) {
                          return MessageDisplay(
                            testToDisplay: 'Start Searching',
                          );
                        } else if (state is Loaded) {
                          return TriviaDisplay(
                            numberTrivia: state.trivia,
                          );
                        } else if (state is Loading) {
                          return LoadingWidget();
                        } else if (state is Error) {
                          return MessageDisplay(
                            testToDisplay: state.message,
                          );
                        } else {
                          return Placeholder();
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TriviaControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
