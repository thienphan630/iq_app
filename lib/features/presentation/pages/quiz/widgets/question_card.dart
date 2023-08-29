import 'package:flutter/material.dart';
import 'package:multiple_choice/core/util/constants/colors.dart';
import 'package:multiple_choice/features/models/question_model.dart';
import 'package:multiple_choice/features/presentation/pages/quiz/widgets/option_widget.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.questionIndex,
  });
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 2, vertical: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sampleData[questionIndex]['question'],
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: sampleData[questionIndex]['options'].length,
                itemBuilder: (context, index) {
                  return Option(
                    index: index,
                    question: sampleData[questionIndex]['options'][index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
