import 'package:cellula_task1_app/core/utils/app_router.dart';
import 'package:cellula_task1_app/core/utils/styles.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/validate_email.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/validate_password.dart';
import 'package:cellula_task1_app/core/widgets/cutom_button.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/custom_text_button.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpSection extends StatefulWidget {
  const SignUpSection({super.key});

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  bool isSecurePassword = true;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? password, email, name;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) => validateEmail(value),
              hint: 'Email',
            ),
            const SizedBox(height: 24),
            //---------------------------------------------

            CustomTextFormField(
              onChanged: (value) {
                password = value;
              },
              validator: (value) => validatePassword2(value),
              obscureText: isSecurePassword,
              suffixIcon: toggalePassword(),
              hint: 'Password',
            ),
            //--------------------------------------------
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                width: double.infinity,
                style: Styles.textStyle20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: Colors.blue,
                text: "LOGIN",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            ),
            //-------------------------------------------------

            CustomTextButton(
                text: "DON't  HAVE AN ACCOUNT?",
                style: Styles.textStyle14.copyWith(
                  color: const Color(0xff007BFF),
                ),
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSignUpViewPath);
                }),
          ],
        ),
      ),
    );
  }

  Widget toggalePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isSecurePassword = !isSecurePassword;
        });
      },
      icon: isSecurePassword
          ? const Icon(
              Icons.visibility_off,
              color: Color(0xff007BFF),
            )
          : const Icon(
              Icons.visibility,
              color: Color(0xff007BFF),
            ),
    );
  }
}
