import 'package:flutter/material.dart';
import 'package:gym_dev/shared/widgets/app_bardart';
import 'package:gym_dev/shared/widgets/divider.dart';
import 'package:gym_dev/shared/widgets/header_text.dart';
import 'package:gym_dev/theme.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> workouts = [
    {'name': 'Costas', 'img_path': 'assets/img/workout_1.png'},
    {'name': 'Peito', 'img_path': 'assets/img/workout_2.png'},
    {'name': 'Pernas', 'img_path': 'assets/img/workout_3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 44, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledAppBar(),
                SizedBox(height: 24),
                StyledDivider(),
                SizedBox(height: 24),
                HeaderText(
                  title: 'Meus Treinos',
                  subtitle: 'Lista de Treinos Criados',
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: workouts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Container(
                          height: 200,
                          width: 327,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            workouts[index]['img_path']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
