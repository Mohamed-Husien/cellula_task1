part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocState {}

final class AuthBlocInitial extends AuthBlocState {}

final class SignUpInitial extends AuthBlocState {}

final class SignUpLoading extends AuthBlocState {}

final class SignUpSuccess extends AuthBlocState {}

final class RegisterFailure extends AuthBlocState {
  final String errMessage;

  RegisterFailure({required this.errMessage});
}

final class LoginInitial extends AuthBlocState {}

final class LoginSuccess extends AuthBlocState {}

final class LoginLoading extends AuthBlocState {}

final class LoginFailure extends AuthBlocState {
  final String errMessage;

  LoginFailure({required this.errMessage});
}

final class StoreUserDataInitial extends AuthBlocState {}

final class StoreUserDataLoading extends AuthBlocState {}

final class StoreUserDataSuccess extends AuthBlocState {}

final class StoreUserDataFailure extends AuthBlocState {
  final String errorMessage;

  StoreUserDataFailure({required this.errorMessage});
}
