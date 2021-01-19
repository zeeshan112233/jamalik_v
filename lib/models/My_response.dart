class User {
  int customerId;
  String email;
  String firstName;
  String lastName;
  String gender;
  String BirthDate;
  String mobile;
  String photo;
  String password;
  String accessToken;

  User(
      {this.customerId,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.BirthDate,
      this.mobile,
      this.photo,
      this.password,
      this.accessToken});

  User.fromJson(Map<String, dynamic> json) {
    customerId = json['Customer_id'];
    email = json['Email'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    gender = json['Gender'];
    BirthDate = json['BirthDate'];
    mobile = json['Mobile'];
    photo = json['Photo'];
    password = json['Password'];
    accessToken = json['Access_Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Customer_id'] = this.customerId;
    data['Email'] = this.email;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Gender'] = this.gender;
    data['BirthDate'] = this.BirthDate;
    data['Mobile'] = this.mobile;
    data['Photo'] = this.photo;
    data['Password'] = this.password;
    data['Access_Token'] = this.accessToken;
    return data;
  }
}

// sign up response without
class UserSignup {
  int customerId;
  String email;
  String firstName;
  String lastName;
  String gender;
  Null birthDate;
  String mobile;
  Null photo;
  String password;

  UserSignup(
      {this.customerId,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.birthDate,
      this.mobile,
      this.photo,
      this.password});

  UserSignup.fromJson(Map<String, dynamic> json) {
    customerId = json['Customer_id'];
    email = json['Email'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    gender = json['Gender'];
    birthDate = json['BirthDate'];
    mobile = json['Mobile'];
    photo = json['Photo'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Customer_id'] = this.customerId;
    data['Email'] = this.email;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Gender'] = this.gender;
    data['BirthDate'] = this.birthDate;
    data['Mobile'] = this.mobile;
    data['Photo'] = this.photo;
    data['Password'] = this.password;
    return data;
  }
}
