import 'package:flutter/material.dart';
import 'package:gym_dev/shared/widgets/appBar.dart';
import 'package:gym_dev/shared/widgets/divider.dart';
import 'package:gym_dev/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 44, 24, 24),
            child: Column(
              children: [
                StyledAppBar(),
                SizedBox(height: 24),
                StyledDivider(),
                SizedBox(height: 24),
                // ListView.builder(
                //   itemCount: 3,
                //   itemBuilder: (context, index) {},
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
