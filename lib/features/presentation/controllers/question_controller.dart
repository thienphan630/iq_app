import 'package:clean_architecture/core/components/base/app_get_controller_base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends AppGetxControllerBase
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;
  @override
  void onInit() {
    super.onInit();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(nextQuestion);
  }

  void nextQuestion() {
    _animationController.reset();
    _animationController.forward().whenComplete(nextQuestion);
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }
}
