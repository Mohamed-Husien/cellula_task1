import 'package:cellula_task1_app/features/auth_feature/presentation/manger/auth_bloc/auth_bloc_bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/log_in_view.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/sign_up_or_login_view.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/view/sign_up_view.dart';
import 'package:cellula_task1_app/features/onboarding_feature/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSinUpOrLoginViewPath = "/sinUpOrLoginView";
  static const kLoginViewPath = "/LoginView";
  static const kSignUpViewPath = "/SignUpView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kSinUpOrLoginViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthBloc(),
          child: const SignUpOrLogInView(),
        ),
      ),
      GoRoute(
        path: kLoginViewPath,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kSignUpViewPath,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
