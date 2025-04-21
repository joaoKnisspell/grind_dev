import 'package:flutter/material.dart';
import 'package:gym_dev/theme.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: 1,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.white,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
