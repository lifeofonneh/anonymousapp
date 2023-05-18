import 'package:flutter/material.dart';
import 'package:time_greeting/time_greeting.dart';
import 'package:anonymous/screens/report.dart';
import '../../../colorscheme.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? profileImageUrl;

  void re() async {
  }

  void findLoc() async {
  }

  String? greeting;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      greeting = getTimeString();
    });
    findLoc();
  }



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        double padding = width > 600 ? 40 : 20;

        return Scaffold(
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${greeting!},",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),

                    const SizedBox(
                      height: 50,
                    ),

                    //todo put picture as asset image, J do the next card.

                    const SizedBox(
                      height: 20,
                    ),
                    //TODO PLEASE READ TODOS THANKS!
                    // TODO try not to use fitted box unnecessarily, especially with things with no solid dimensions. ALSO ask when that issue with overflowing screen arises
                    Center(
                      child: Container(
                        width: 600, // Set width of the container here
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const ReportForm();
                              }),
                            );
                          },
                          icon: Icon(Icons.warning, color: Colors.red),
                          label: Text(
                            'Send Incident Report',
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Tips for submitting report",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color:Colors.red),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Provide as much detail as possible, including dates, times, and locations.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Avoid making assumptions or speculations.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Describe the impact of the incident on yourself or others, if applicable.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Report any supporting witnesses or individuals involved in the incident.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Be mindful of any legal or ethical obligations when reporting certain types of incidents, such as suspected rape.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Keep a record of your report, including the date and time it was submitted.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),




                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: 300, // Set width of the container here
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const ReportForm();
                              }),
                            );
                          },
                          icon: Icon(Icons.phone, color: Colors.white),
                          label: Text(
                            'Emergency Call',
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),


                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
