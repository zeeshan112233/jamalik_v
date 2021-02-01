import 'package:flutter/material.dart';
import 'package:jamalik/Ui/AddStaff.dart';
import 'package:jamalik/Ui/FAQ.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/Ui/GettingStarted.dart';
import 'package:jamalik/Ui/Otpauthentication.dart';
import 'package:jamalik/Ui/Passwordrecovery.dart';
import 'package:jamalik/Ui/aboutapp.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/Ui/ParadiseBeautySalon.dart';
import 'package:jamalik/Ui/ProviderScreen.dart';
import 'package:jamalik/Ui/ResetPassword.dart';
import 'package:jamalik/Ui/Servicesscreen.dart';
import 'package:jamalik/Ui/Verifyidentity.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/Ui/staff.dart';
import 'package:jamalik/redux/model/app_state.dart';
import 'package:jamalik/redux/reducers.dart';
import 'package:jamalik/widgets/Serviceswidget.dart';
import 'package:redux/redux.dart';

import 'package:jamalik/Ui/AddServiceDetails.dart';
import 'package:jamalik/Ui/dashboard.dart';

import 'Ui/GettingStarted.dart';

void main() {
  final _initialState = Appstate();
  final Store<Appstate> _store =
      Store<Appstate>(reducer, initialState: _initialState);

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<Appstate> store;
  MyApp({this.store});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<Appstate>(
      store: store,
      child: MaterialApp(
        title: "Welcome",
        home: new SplashScreen(),
      ),
    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GettingStarted(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E2537),
        body: Container(
          child: Image.asset(
            'images/splashscreen.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ));
  }
}
