import 'package:flutter/material.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController nameController = TextEditingController();
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
            image: AssetImage("images/2.jpg"),
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
                  controller: nameController,
                  //obscureText: true,

                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    suffixStyle: TextStyle(
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
                    labelStyle: TextStyle(
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    hintText: "Please enter ur User_name ",
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
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
                            fontFamily: "AbyssinicaSIL"),
                      ),
                    ),
                  ),
                  maxLines: 1,
                  maxLength: 20,
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
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
                    labelStyle: TextStyle(
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.key, color: Colors.black),
                    hintText: "Please enter ur password",
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: "AbyssinicaSIL"),
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
                            fontFamily: "AbyssinicaSIL"),
                      ),
                    ),
                  ),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                  onSubmitted: (value) {
                    print(value);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  if (nameController.text == "yazeed" &&
                      passwordController.text == "1234") {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            content: Text("u r welcome plz wait"),
                            actions: [
                              ElevatedButton(
                                  onPressed: (() {}), child: Text("will wait")),
                              ElevatedButton(
                                  onPressed: (() {
                                    Navigator.pop(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return Log_in();
                                    })));
                                  }),
                                  child: Text("won't"))
                            ],
                          );
                        }));
                  } else
                    (showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            content: Text("Wrong User name or password "),
                            actions: [
                              ElevatedButton(
                                  onPressed: (() {
                                    Navigator.pop(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return Log_in();
                                    })));
                                  }),
                                  child: Text("Try Again"))
                            ],
                          );
                        })));
                }),
                child: Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
