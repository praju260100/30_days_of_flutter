import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image(
              image: AssetImage(
                "assets/images/login.png",
              ),
              fit: BoxFit.cover,
            ),
            Text('Welcome $name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: ' Enter username', labelText: "Email"),
                  onChanged: ((value) {
                    name = value;
                    setState(() {});
                  }),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: " Enter password", labelText: "Password"),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },

                    //ElevatedButton(
                    //child: Text("login"),
                    //style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // onPressed: () {
                    //  Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //  },
                    // )
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changedButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changedButton
                          ? Icon(Icons.done)
                          : Text(
                              "login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changedButton
                          // ? BoxShape.circle
                          //   : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changedButton ? 50 : 8)),
                    ))
              ]),
            )
          ]),
        ));
  }
}
