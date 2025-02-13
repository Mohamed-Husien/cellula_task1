import 'package:bloc/bloc.dart';
import 'package:cellula_task1_app/features/auth_feature/data/models/user_data_model.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(AuthBlocInitial()) {
    on<AuthBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
