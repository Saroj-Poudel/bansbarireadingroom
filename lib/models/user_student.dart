class Students {
  String name = 'Saroj Poudel';
  String address = 'Ratnanagar-1, Chitwan';
  String contact = '9855029847';
  String email = 'evergreensaroj@gmail.com';
  String gender = 'male';
  String package = 'monthly';
  String dob = '1992/08/29';
  String psw = '123';
  String cpsw = '123';

  Students(
      {required this.name,
      required this.address,
      required this.contact,
      required this.email,
      required this.gender,
      required this.package,
      required this.dob,
      required this.psw,
      required this.cpsw});

  void signup() {}
  void signin() {}
  void forgetpassword() {}
}
