import 'package:flutter/material.dart';
import 'package:multiple_choice/core/util/constants/colors.dart';
import 'package:multiple_choice/features/models/question_model.dart';
import 'package:multiple_choice/features/presentation/pages/quiz/widgets/option_widget.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sampleData[0]['question'],
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Option(),
          const Option(),
          const Option(),
          const Option(),
        ],
      ),
    );
  }
}
