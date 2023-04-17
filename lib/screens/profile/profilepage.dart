import 'package:flutter/material.dart';

import 'components/body.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Body(),

    );
  }
}
