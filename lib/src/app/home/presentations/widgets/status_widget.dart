import 'package:flutter/material.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';

class StatusWidget extends StatelessWidget {
  final int count;
  final String status;
  const StatusWidget({super.key, required this.count, required this.status});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$count",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: ColorHelper.fontColor,
          ),
        ),
        Text(
          status,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
