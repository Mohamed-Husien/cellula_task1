part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocState {}

final class AuthBlocInitial extends AuthBlocState {}

final class AuthInitial extends AuthBlocState {}

final class RegisterInitial extends AuthBlocState {}

final class RegisterLoading extends AuthBlocState {}

final class RegisterSuccess extends AuthBlocState {}

final class RegisterFailure extends AuthBlocState {
  final String errMessage;

  RegisterFailure({required this.errMessage});
}

final class SignInitial extends AuthBlocState {}

final class SignInSuccess extends AuthBlocState {}

final class SignInLoading extends AuthBlocState {}

final class SignInFailure extends AuthBlocState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class StoreUserDataInitial extends AuthBlocState {}

final class StoreUserDataLoading extends AuthBlocState {}

final class StoreUserDataSuccess extends AuthBlocState {}

final class StoreUserDataFailure extends AuthBlocState {
  final String errorMessage;

  StoreUserDataFailure({required this.errorMessage});
}
