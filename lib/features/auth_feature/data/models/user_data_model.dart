class UserDataModel {
  final String name, email, password;
  final DateTime dateTime;

  UserDataModel(
      {required this.dateTime,
      required this.name,
      required this.email,
      required this.password});
}
