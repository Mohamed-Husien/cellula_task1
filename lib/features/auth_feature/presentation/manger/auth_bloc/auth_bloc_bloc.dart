import 'package:bloc/bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/data/models/user_data_model.dart';
import 'package:cellula_task1_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(AuthBlocInitial()) {
    on<AuthBlocEvent>(
      (event, emit) async {
        if (event is RegisterEvent) {
          emit(SignUpLoading());

          try {
            await AuthRepoImpl().createUserWithEmailAndPassword(
                email: event.email, password: event.password);
            emit(SignUpSuccess());
          } on FirebaseAuthException catch (e) {
            if (e.code == 'weak-password') {
              emit(
                RegisterFailure(
                    errMessage: 'The password provided is too weak.'),
              );
            } else if (e.code == 'email-already-in-use') {
              emit(RegisterFailure(
                  errMessage: 'The account already exists for that email.'));
            }
          } catch (e) {
            emit(RegisterFailure(
                errMessage: 'There was an error please try again!'));
          }
        }
        if (event is LoginEvent) {
          emit(LoginLoading());

          try {
            await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(LoginSuccess());
          } on FirebaseAuthException catch (e) {
            if (e.code == 'weak-password') {
              emit(LoginFailure(
                  errMessage: 'The password provided is too weak.'));
            } else if (e.code == 'email-already-in-use') {
              emit(LoginFailure(
                  errMessage: 'The account already exists for that email.'));
            }
          } catch (e) {
            emit(LoginFailure(
                errMessage: 'There was an error please try again!'));
          }
        }
      },
    );
  }
}
