import 'package:flutter/material.dart';
import 'package:gym_dev/shared/widgets/action.dart';
import 'package:gym_dev/shared/widgets/header_text.dart';
import 'package:gym_dev/theme.dart';

class ActionsSection extends StatelessWidget {
  ActionsSection({super.key});

  final List<Map<String, dynamic>> actions = [
    {
      'name': 'Novo Treino',
      'icon': Icon(Icons.article, color: AppColors.purpleIcon),
      'bgColor': AppColors.purpleBg,
      'onTap': () {
        print('Novo Treino');
      },
    },
    {
      'name': 'Novo Exercício',
      'icon': Icon(Icons.directions_run, color: AppColors.redIcon),
      'bgColor': AppColors.redBg,
      'onTap': () {
        print('Novo Exercício');
      },
    },
    {
      'name': 'Treinos Realizados',
      'icon': Icon(Icons.fact_check, color: AppColors.yelloweIcon),
      'bgColor': AppColors.yelloweBg,
      'onTap': () {
        print('Treinos Realizados');
      },
    },
    {
      'name': 'Frequência de Treinos',
      'icon': Icon(Icons.event_available, color: AppColors.greenIcon),
      'bgColor': AppColors.greenBg,
      'onTap': () {
        print('Frequência de Treinos');
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderText(title: 'Ações', subtitle: 'Menu de Ações'),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (Map<String, dynamic> action in actions)
              GestureDetector(
                onTap: action['onTap'],
                child: ActionCard(
                  name: action['name'],
                  icon: action['icon'],
                  bgColor: action['bgColor'],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
