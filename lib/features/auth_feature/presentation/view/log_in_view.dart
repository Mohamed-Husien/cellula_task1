import 'package:cellula_task1_app/core/widgets/show_snack_bar.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/manger/auth_bloc/auth_bloc_bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<AuthBloc, AuthBlocState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          showSnackBarFun(context, 'Login done successfully');
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBarFun(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: const Scaffold(
            body: LogInViewBody(),
          ),
        );
      },
    );
  }
}
