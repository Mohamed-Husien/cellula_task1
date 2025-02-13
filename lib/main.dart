import 'package:cellula_task1_app/constants.dart';
import 'package:cellula_task1_app/core/utils/app_router.dart';
import 'package:cellula_task1_app/features/auth_feature/presentation/manger/auth_bloc/auth_bloc_bloc.dart';
import 'package:cellula_task1_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.notoSansAdlamTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
