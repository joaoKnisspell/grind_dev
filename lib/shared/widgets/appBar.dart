import 'package:flutter/material.dart';
import 'package:gym_dev/theme.dart';

class StyledAppBar extends StatelessWidget {
  const StyledAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/img/profile.png', width: 40),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Olá, João!',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    'Tenha um bom treino.',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.dark100,
                ),
                width: 30,
                height: 30,
              ),
              Icon(Icons.notifications, color: AppColors.icon, size: 19),
            ],
          ),
        ],
      ),
    );
  }
}
