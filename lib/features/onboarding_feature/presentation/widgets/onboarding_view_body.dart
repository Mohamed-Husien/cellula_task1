import 'package:cellula_task1_app/constants.dart';
import 'package:cellula_task1_app/core/utils/app_images.dart';
import 'package:cellula_task1_app/core/utils/app_router.dart';
import 'package:cellula_task1_app/core/widgets/cutom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesTest),
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
                Color(0xff000F30),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  flex: 3,
                  child: Center(),
                ),
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .push(AppRouter.kSinUpOrLoginViewPath);
                    },
                    backgroundColor: Colors.white,
                    textColor: kPrimaryColor,
                    text: 'Skip',
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
