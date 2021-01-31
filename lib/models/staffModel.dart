class staff {
  int staffId;
  String firstName;
  String lastName;
  String email;
  String gender;
  String mobileNo;
  String description;
  int providerId;

  staff(
      {this.staffId,
      this.firstName,
      this.lastName,
      this.email,
      this.gender,
      this.mobileNo,
      this.description,
      this.providerId});

  staff.fromJson(Map<String, dynamic> json) {
    staffId = json['StaffId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    gender = json['Gender'];
    mobileNo = json['MobileNo'];
    description = json['Description'];
    providerId = json['Provider_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StaffId'] = this.staffId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['Gender'] = this.gender;
    data['MobileNo'] = this.mobileNo;
    data['Description'] = this.description;
    data['Provider_id'] = this.providerId;
    return data;
  }
}