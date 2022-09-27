import 'package:flutter/material.dart';
import 'package:lec_27_9/screens/login.dart';
import 'package:lec_27_9/screens/siginup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Log_in();
                      })));
                    }),
                    child: Text(
                      "log_in Page",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "RobotoSlab",
                          fontSize: 30),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Sign_up();
                      })));
                    }),
                    child: Text(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "RobotoSlab",
                            fontSize: 30),
                        "Sign_up Page")),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/1.jpg"),
              ),
            ),
          ),
        ));
  }
}
