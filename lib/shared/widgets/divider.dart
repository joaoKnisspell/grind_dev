import 'package:flutter/material.dart';
import 'package:gym_dev/theme.dart';

class StyledDivider extends StatelessWidget {
  const StyledDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.dark100, thickness: 2)),
        SizedBox(width: 12),
        Image.asset('assets/img/logo_sm.png', width: 40),
        SizedBox(width: 12),
        Expanded(child: Divider(color: AppColors.dark100, thickness: 2)),
      ],
    );
  }
}
