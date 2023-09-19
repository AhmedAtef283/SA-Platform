class SignUpModel {
  String? birthDate;
  String? email;
  String? faculty;
  String? facultyDep;
  String? firstName;
  String? lastName;
  int? gradYear;
  String? password;
  String? phone;
  String? university;
  String? userName;
  String? bio;

  SignUpModel(
      { this.bio,
        required this.email,
      required this.password,
      required this.birthDate,
      required this.faculty,
      required this.facultyDep,
      required this.university,
      required this.lastName,
      required this.firstName,
      required this.gradYear,
      required this.phone,
      required this.userName,
      });
}
