class User {
  int providerId;
  String firstName;
  String lastName;
  String email;
  String gender;
  String providerType;
  String photo;
  String mobile;
  String password;
  String accessToken;

  User(
      {this.providerId,
      this.firstName,
      this.lastName,
      this.email,
      this.gender,
      this.providerType,
      this.photo,
      this.mobile,
      this.password,
      this.accessToken});

  User.fromJson(Map<String, dynamic> json) {
    providerId = json['Provider_id'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    gender = json['Gender'];
    providerType = json['ProviderType'];
    photo = json['Photo'];
    mobile = json['Mobile'];
    password = json['Password'];
    accessToken = json['Access_Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Provider_id'] = this.providerId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['Gender'] = this.gender;
    data['ProviderType'] = this.providerType;
    data['Photo'] = this.photo;
    data['Mobile'] = this.mobile;
    data['Password'] = this.password;
    data['Access_Token'] = this.accessToken;
    return data;
  }
}



// sign up response without
class UserSignup {
  int providerId;
  String firstName;
  String lastName;
  String email;
  String gender;
  String providerType;
  String photo;
  String mobile;
  String password;

  UserSignup(
      {this.providerId,
      this.firstName,
      this.lastName,
      this.email,
      this.gender,
      this.providerType,
      this.photo,
      this.mobile,
      this.password});

  UserSignup.fromJson(Map<String, dynamic> json) {
    providerId = json['Provider_id'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    gender = json['Gender'];
    providerType = json['ProviderType'];
    photo = json['Photo'];
    mobile = json['Mobile'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Provider_id'] = this.providerId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['Gender'] = this.gender;
    data['ProviderType'] = this.providerType;
    data['Photo'] = this.photo;
    data['Mobile'] = this.mobile;
    data['Password'] = this.password;
    return data;
  }
}
