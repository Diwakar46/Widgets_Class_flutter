class UserData {
  final String? userName;
  final String? userID;
  final String? dateOfBirth;
  final String? token;
  final String? email;

  UserData(
      {required this.userName,
      required this.token,
      required this.dateOfBirth,
      required this.userID,
      required this.email});

  UserData.fromJson(Map<String, dynamic> json);
}
