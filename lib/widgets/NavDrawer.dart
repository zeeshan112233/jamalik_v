import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/Ui/Checkout.dart';
import 'package:jamalik/Ui/Favourites.dart';
import 'package:jamalik/Ui/MyServices1.dart';
import 'package:jamalik/Ui/ParadiseBeautySalon.dart';
import 'package:jamalik/Ui/Payment.dart';
import 'package:jamalik/Ui/Profile.dart';
import 'package:jamalik/Ui/ProviderScreen.dart';
import 'package:jamalik/Ui/Servicesscreen.dart';
import 'package:jamalik/Ui/aboutapp.dart';
import 'package:jamalik/Ui/coupen.dart';
import 'package:jamalik/Ui/customersupport.dart';
import 'package:jamalik/Ui/dashboard.dart';
import 'package:jamalik/Ui/language.dart';
import 'package:jamalik/Ui/logout.dart';
import 'package:jamalik/Ui/myservice.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/redux/model/app_state.dart';

class NavDrawer extends StatelessWidget {
  NavDrawer({
    this.dp,
    this.name,
  });
  final String dp;
  final String name;

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purple[500], Colors.pink.shade300]),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new IconButton(
                      icon: new Icon(Icons.notifications),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () => print("bell icon tapped"),
                    ),
                    IconButton(
                      icon: new Icon(Icons.settings),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () => print("setting icon tapped"),
                    ),
                  ],
                ),

                //circular dp
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/company2.jpeg"),
                  backgroundColor: Colors.transparent,
                ),

                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey, $name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 28.0, top: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Welcome to jamalik',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Profile(),
                                        ),
                                      )
                                    },
                                    child: Text(
                                      'Edit Profile',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ListTile(
                //   title: Text(
                //     'Dashboard',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => dashboard(),
                //       ),
                //     )
                //   },
                // ),

                SizedBox(height: 20.0),

                                ListTile(
                  title: Text(
                    'Add Schedule',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dashboard(),
                      ),
                    )
                  },
                ),
                
          StoreConnector<Appstate, Appstate>(
                      converter: (store) => store.state,
                      builder: (context, state) {
                        return Container(
                          child: state.user.providerType == 'company'?

                                        ListTile(
                  title: Text(
                    'Add Staff',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dashboard(),
                      ),
                    )
                  },
                )
                          
                        :
                        null);
                      }),


                // ListTile(
                //   title: Text(
                //     'My Services',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => MyServices1(),
                //       ),
                //     )
                //   },
                // ),
                // ListTile(
                //   title: Text(
                //     'Providers',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => ProviderScreen(),
                //       ),
                //     )
                //   },
                // ),
                // ListTile(
                //   title: Text(
                //     'Coupons',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => coupen(),
                //       ),
                //     )
                //   },
                // ),
                ListTile(
                  title: Text(
                    'Customer Support',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => customersupport(),
                      ),
                    )
                  },
                ),

                // ListTile(
                //   title: Text(
                //     'Services',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => Servicesscreen(),
                //       ),
                //     )
                //   },
                // ),

                // ListTile(
                //   title: Text(
                //     'Payments',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => Payment(),
                //       ),
                //     )
                //   },
                // ),
                // ListTile(
                //   title: Text(
                //     'Favourites',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => Favourite(),
                //       ),
                //     )
                //   },
                // ),

                // ListTile(
                //   title: Text(
                //     'Paradise Beauty Saloon',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => ParadiseBeautySalon(),
                //       ),
                //     )
                //   },
                // ),
                ListTile(
                  title: Text(
                    'Notification',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => notification(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'About App',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => aboutapp(),
                      ),
                    )
                  },
                ),

                // ListTile(
                //   title: Text(
                //     'Checkout Widget',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => Checkout(),
                //       ),
                //     )
                //   },
                // ),
                

                //                 ListTile(
                //   title: Text(
                //     'Logout',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => logout(),
                //       ),
                //     )
                //   },
                // ),
                // ListTile(
                //   title: Text(
                //     'Language',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => language(),
                //       ),
                //     )
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
