import 'package:flutter/material.dart';
import 'package:multiple_choice/core/util/constants/colors.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1. Testttt',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
