import 'package:flutter/material.dart';
import 'package:gym_dev/theme.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.name,
    required this.icon,
    required this.bgColor,
  });

  final String name;
  final Icon icon;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 50,
          height: 50,
          child: icon,
        ),
        SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 71, // largura máxima
          ),
          child: Text(
            name,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.white,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
