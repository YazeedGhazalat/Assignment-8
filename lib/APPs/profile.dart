import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lec_27_9/models/links.dart';
import 'package:lec_27_9/screens/login.dart';

class myProfile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.red,
        title: Center(
          child: const Text(
            'Yazeed Profile',
            style: TextStyle(
              fontFamily: "RobotoSlab",
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Color.fromARGB(102, 101, 237, 255)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  minRadius: 60.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/Picture1.png"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Yazeed Ghazalat',
                  style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                    fontSize: 35,
                    fontFamily: "RobotoSlab",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                    fontFamily: "RobotoSlab",
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue.shade300,
                    child: ListTile(
                      title: Text(
                        '5700',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Followers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "RobotoSlab",
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text(
                        '300',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Following',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "RobotoSlab",
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                URLClass(
                  myFunction: Facebook,
                  myPlatformIcon: Icons.facebook,
                  myPlatformTitle: "Facebook",
                  myPlatformSubTitle:
                      "https://www.facebook.com/yazeed.ghazalat/",
                ),
                URLClass(
                  myFunction: GitHub,
                  myPlatformIcon: Ionicons.logo_github,
                  myPlatformTitle: "GitHub",
                  myPlatformSubTitle: "https://github.com/YazeedGhazalat",
                ),
                URLClass(
                  myFunction: Email,
                  myPlatformIcon: Ionicons.mail,
                  myPlatformTitle: "Email",
                  myPlatformSubTitle: "YazeedGhazalat@gmail.com",
                ),
                URLClass(
                  myFunction: Phone,
                  myPlatformIcon: Ionicons.call,
                  myPlatformTitle: "Phone",
                  myPlatformSubTitle: "+962780785310",
                ),
                Divider(),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.black,
                        minimumSize: const Size(200, 40),
                        maximumSize: const Size(250, 50),
                        backgroundColor: Color.fromARGB(255, 184, 184, 184)),
                    onPressed: (() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: ((context) {
                        return Log_in();
                      })));
                    }),
                    icon: Icon(
                      Ionicons.log_out_outline,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Log out",
                      style: TextStyle(
                        fontFamily: "RobotoSlab",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
