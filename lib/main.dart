import 'package:flutter/material.dart';
import 'package:waya/screens/introduction.dart';

import 'package:waya/screens/loginpage.dart';
import 'package:flutter/services.dart';
import 'package:waya/routes.dart';
import 'package:waya/screens/messagesnotificationpage.dart';
import 'package:waya/screens/editprofilepage.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Set app orientation to portrait only
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(const MaterialApp(
            home: Anonymous(),
          )));
}
// void findLoc() async{
//   Location location = Location();
//
//   bool _serviceEnabled;
//   PermissionStatus _permissionGranted;
//   LocationData _locationData;
//
//   _serviceEnabled = await location.serviceEnabled();
//   if (!_serviceEnabled) {
//     _serviceEnabled = await location.requestService();
//     if (!_serviceEnabled) {
//       return;
//     }
//   }
//
//   _permissionGranted = await location.hasPermission();
//   if (_permissionGranted == PermissionStatus.denied) {
//     _permissionGranted = await location.requestPermission();
//     if (_permissionGranted != PermissionStatus.granted) {
//       return;
//     }
//   }
//
//   _locationData = await location.getLocation();
//   print(_locationData);
// }

class Anonymous  extends StatelessWidget {
  const Anonymous({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroductionPage()

    );
  }
}
