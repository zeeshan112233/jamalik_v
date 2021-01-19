class Signup_response {
  bool status;
  User user;

  Signup_response({this.status, this.user});

  Signup_response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String image;
  String stateId;
  Null mls;
  Null website;
  String phone;
  String service;
  int role;
  String deviceType;
  String token;
  Null firebaseID;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.image,
      this.stateId,
      this.mls,
      this.website,
      this.phone,
      this.service,
      this.role,
      this.deviceType,
      this.token,
      this.firebaseID,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    image = json['image'];
    stateId = json['state_id'];
    mls = json['mls'];
    website = json['website'];
    phone = json['phone'];
    service = json['service'];
    role = json['role'];
    deviceType = json['device_type'];
    token = json['token'];
    firebaseID = json['firebaseID'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['image'] = this.image;
    data['state_id'] = this.stateId;
    data['mls'] = this.mls;
    data['website'] = this.website;
    data['phone'] = this.phone;
    data['service'] = this.service;
    data['role'] = this.role;
    data['device_type'] = this.deviceType;
    data['token'] = this.token;
    data['firebaseID'] = this.firebaseID;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
