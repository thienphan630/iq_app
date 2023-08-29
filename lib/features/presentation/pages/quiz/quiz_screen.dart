import 'package:multiple_choice/core/util/constants/colors.dart';
import 'package:multiple_choice/features/models/question_model.dart';
import 'package:multiple_choice/features/presentation/pages/quiz/widgets/process_bar.dart';
import 'package:flutter/material.dart';
import 'package:multiple_choice/features/presentation/pages/quiz/widgets/question_card.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('skip'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: kBackgroundColor, gradient: kBackgroundGradient),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              color: Colors.transparent,
              child: Column(
                children: [
                  const ProcessBar(),
                  const SizedBox(height: kDefaultPadding),
                  Text.rich(
                    TextSpan(
                        text: 'Question 1',
                        style: Theme.of(context).textTheme.headlineLarge,
                        children: [
                          TextSpan(
                              text: '/10',
                              style: Theme.of(context).textTheme.headlineMedium)
                        ]),
                  ),
                  const Divider(thickness: 1.5),
                  Expanded(
                      child: PageView.builder(
                          itemCount: sampleData.length,
                          itemBuilder: (context, index) {
                            return QuestionCard(questionIndex: index);
                          }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
