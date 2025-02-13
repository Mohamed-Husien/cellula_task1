import 'package:cellula_task1_app/features/auth_feature/data/models/user_data_model.dart';
import 'package:cellula_task1_app/features/auth_feature/data/repos/auth_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  @override
  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithEmailAndPasswor(
      {required String email, required String password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> storeUserData({required UserDataModel userDataModel}) async {
    await users.add(
      {
        'full_name': userDataModel.name,
        'email': userDataModel.email,
        'password': userDataModel.password,
        'created_at': userDataModel.dateTime,
      },
    );
  }
}
