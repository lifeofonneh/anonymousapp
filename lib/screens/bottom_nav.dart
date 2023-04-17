import 'package:flutter/material.dart';
import 'package:waya/colorscheme.dart';
import 'package:waya/constants/constants.dart';
import 'package:waya/screens/homepage.dart';
import 'package:waya/screens/profile/profilepage.dart';
import 'package:waya/screens/messagesnotificationpage.dart';


class BottomNavPage extends StatefulWidget {

  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;
  static const List<Widget> _childrenPages = <Widget>[
    HomePage(),
    MessagesPage(),
    AccountPage()
  ];

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _childrenPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: blue,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        //type allows you have more than 1 item in bottom navigator
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
