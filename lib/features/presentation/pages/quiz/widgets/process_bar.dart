import 'package:multiple_choice/core/util/constants/colors.dart';
import 'package:multiple_choice/features/presentation/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProcessBar extends StatelessWidget {
  const ProcessBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xFF3F4768)),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: constraints.maxWidth * controller.animation.value,
                      height: controller.animation.value < 0.08
                          ? constraints.maxHeight *
                              controller.animation.value *
                              12
                          : constraints.maxHeight,
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                Positioned.fill(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${(controller.animation.value * 60).round()} sec'),
                      const Icon(Icons.watch_later_outlined)
                    ],
                  ),
                ))
              ],
            );
          }),
    );
  }
}
