import 'package:cellula_task1_app/features/auth_faeture/presentation/view/sign_up_or_login_view.dart';
import 'package:cellula_task1_app/features/onboarding_feature/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSinUpOrLoginViewPath = "/sinUpOrLoginView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kSinUpOrLoginViewPath,
        builder: (context, state) => const SignUpOrLogInView(),
      ),
    ],
  );
}
