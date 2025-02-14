import 'package:bloc/bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/data/models/user_data_model.dart';
import 'package:cellula_task1_app/features/auth_feature/data/repos/auth_repo.dart';
import 'package:cellula_task1_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final AuthRepo _authRepo = AuthRepoImpl();
  AuthBloc() : super(AuthBlocInitial()) {
    on<AuthBlocEvent>(
      (event, emit) async {
        if (event is SignUpEvent) {
          emit(SignUpLoading());

          try {
            await _authRepo.createUserWithEmailAndPassword(
                email: event.email, password: event.password);
            emit(signUpSuccess());
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
        } else if (event is LoginEvent) {
          emit(LoginLoading());

          try {
            await _authRepo.signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(LoginSuccess());
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              emit(LoginFailure(errMessage: 'No user found for that email.'));
            } else if (e.code == 'wrong-password') {
              emit(LoginFailure(
                  errMessage: 'Wrong password provided for that user.'));
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
