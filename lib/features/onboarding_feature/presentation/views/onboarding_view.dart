import 'package:cellula_task1_app/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMfCSddxAf7XWxNmaOjlkAcP_LESTRRGGYQ&s',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black12,
                    kPrimaryColor,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
