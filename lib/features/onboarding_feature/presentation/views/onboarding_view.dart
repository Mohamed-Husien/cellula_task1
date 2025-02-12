import 'package:cellula_task1_app/constants.dart';
import 'package:cellula_task1_app/features/onboarding_feature/presentation/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: OnBoardingViewBody(),
    );
  }
}
