import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lec_27_9/APPs/profile.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/3386851.jpg"),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 80,
                foregroundImage: AssetImage("images/3.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: userNameController,
                  //obscureText: true,

                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    suffixStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    labelStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    hintText: "Please enter ur User_name ",
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    label: Container(
                      //                    color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        "UserName ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontFamily: "RobotoSlab"),
                      ),
                    ),
                  ),
                  maxLines: 1,
                  maxLength: 10,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    suffixStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    labelStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.key, color: Colors.black),
                    hintText: "Please enter ur password",
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: "RobotoSlab"),
                    label: Container(
                      //                    color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontFamily: "RobotoSlab"),
                      ),
                    ),
                  ),
                  maxLines: 1,
                  maxLength: 10,
                  textAlign: TextAlign.center,
                  onSubmitted: (value) {
                    print(value);
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    minimumSize: const Size(200, 55),
                    maximumSize: const Size(300, 60),
                    backgroundColor: Colors.grey.shade300),
                onPressed: (() {
                  if (userNameController.text == "yazeed" &&
                      passwordController.text == "1234") {
                    showDialog(
                        context: context,
                        useSafeArea: true,
                        builder: ((context) {
                          return AlertDialog(
                            alignment: Alignment.center,
                            content: Text(
                              textDirection: TextDirection.ltr,
                              "please wait!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, fontFamily: "RobotoSlab"),
                            ),
                            icon: Icon(
                              Ionicons.time,
                            ),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: [
                              ElevatedButton.icon(
                                  icon: Icon(Ionicons.enter),
                                  onPressed: (() {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: ((context) {
                                        return myProfile();
                                      }),
                                    ));
                                  }),
                                  label: Text("Enter")),
                              ElevatedButton.icon(
                                  icon: Icon(Ionicons.exit),
                                  onPressed: (() {
                                    Navigator.pop(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return Log_in();
                                    })));
                                  }),
                                  label: Text("Exit"))
                            ],
                          );
                        }));
                  } else
                    (showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          content: Text(
                            "Wrong User name or password ",
                            style: TextStyle(fontFamily: "RobotoSlab"),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: (() {
                                  Navigator.pop(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return Log_in();
                                  })));
                                }),
                                child: Text(
                                  "Try Again",
                                  style: TextStyle(fontFamily: "RobotoSlab"),
                                ))
                          ],
                        );
                      }),
                    ));
                }),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontFamily: "RobotoSlab",
                      color: Colors.black,
                      fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
