import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/header_text_section.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/log_in_section.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/sign_up_section.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                text1: "SIGN UP",
                text2: 'Create an account to get exclusive services',
              ),
              SizedBox(
                height: 124,
              ),
              SignUpSection(),
            ],
          ),
        ),
      ),
    );
  }
}
