import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/header_text_section.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/log_in_section.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 64,
              ),
              HeaderTextSection(
                text1: "LOGIN",
                text2: 'Login now to unlock a world of exclusive services',
              ),
              SizedBox(
                height: 124,
              ),
              LogInSection(),
            ],
          ),
        ),
      ),
    );
  }
}
