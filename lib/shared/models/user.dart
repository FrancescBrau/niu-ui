class User {
  String userName;
  String password;
  String email;
  bool isActive;

  User(
      {required this.userName,
      required this.password,
      required this.email,
      required this.isActive});

  @override
  String toString() {
    return "($userName, ********)";
  }
}
