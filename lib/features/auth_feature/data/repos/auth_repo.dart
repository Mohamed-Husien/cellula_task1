import 'package:cellula_task1_app/features/auth_feature/data/models/user_data_model.dart';

abstract class AuthRepo {
  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> storeUserData({required UserDataModel userDataModel});
}
