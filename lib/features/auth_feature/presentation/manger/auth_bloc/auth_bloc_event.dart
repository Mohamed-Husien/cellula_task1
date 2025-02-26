part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocEvent {}

class LoginEvent extends AuthBlocEvent {
  final String email, password;

  LoginEvent({required this.email, required this.password});
}

class SignUpEvent extends AuthBlocEvent {
  final String email, password;

  SignUpEvent({required this.email, required this.password});
}

class StoreUserData extends AuthBlocEvent {
  final UserDataModel userDataModel;

  StoreUserData({required this.userDataModel});
}
