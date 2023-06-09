import 'package:flutter/material.dart';
import 'package:anonymous/colorscheme.dart';
import 'package:anonymous/screens/profile/profilepage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  //Todo Text editing controller holds the user input for program execution, the names are self explanatory of what they do or hold
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phoneNumber = TextEditingController(text: 'phone');
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController homeAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [const SizedBox(
        height: 20,
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.black,
              ),
            ),
            Text(
              'Edit Profile',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 10),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'First name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      //TextField for name
                      TextField(
                        controller: firstname,
                        cursorColor: customPurple,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            hintText: 'Enter your First Name',
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.yellow),
                            )),
                      ),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Last Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      //TextField for name
                      TextField(
                        controller: lastname,
                        cursorColor: customPurple,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            hintText: 'Enter your Last Name',
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.yellow),
                            )),
                      ),
                    ],
                  )),

              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      //TextField for name
                      TextField(
                        controller: email,
                        cursorColor: customPurple,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            hintText: 'Enter your Email Address',
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.yellow),
                            )),
                      ),
                    ],
                  )),

              const SizedBox(height: 10),
              //sign up button
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const AccountPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: customPurple,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                            bottom: Radius.circular(20),
                          ),
                        )),
                    child: const SizedBox(
                      width: 260,
                      height: 50,
                      child: Center(child: Text('Update', style: TextStyle(

                          color: Colors.white),)
                      ),
                    )),
              ),
              const SizedBox(height: 10)
            ],
          ),
        )
      ],
    ));
  }
}
