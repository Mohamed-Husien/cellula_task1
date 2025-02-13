import 'package:cellula_task1_app/core/utils/app_router.dart';
import 'package:cellula_task1_app/core/widgets/cutom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpOrLoginViewBody extends StatelessWidget {
  const SignUpOrLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            // flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 42,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xff014BB4),
                      textColor: Colors.white,
                      text: 'Sign Up ',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kLoginViewPath);
                      },
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      text: 'Log In',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
