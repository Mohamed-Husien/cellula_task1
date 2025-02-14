import 'package:cellula_task1_app/features/auth_feature/presentation/manger/auth_bloc/auth_bloc_bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/widgets/show_snack_bar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    return BlocConsumer<AuthBloc, AuthBlocState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          isLoading = true;
        } else if (state is signUpSuccess) {
          showSnackBarFun(context, 'Sign Up done successfully');
          isLoading = false;
        } else if (state is RegisterFailure) {
          showSnackBarFun(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: const Scaffold(
            body: SignUpViewBody(),
          ),
        );
      },
    );
  }
}
