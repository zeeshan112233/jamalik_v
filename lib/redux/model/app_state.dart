import 'package:flutter/material.dart';
import '../../models/My_response.dart';

class Appstate {
  User user;
  Appstate({this.user});
  Appstate.fromAppState(Appstate another) {
    user = another.user;
  }
}
