import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/sarvice.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Text(
              "SIGN UP",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "CREATE AN ACCOUNT.ITS FREE ",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 30),
            TextField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 249, 247, 111),
                filled: true,
                hintText: "username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 248, 248, 91),
                filled: true,
                hintText: "email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 236, 244, 86),
                filled: true,
                suffixIcon: Icon(Icons.visibility),
                hintText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
            
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 238, 230, 89),
                filled: true,
                suffixIcon: Icon(Icons.visibility),
                hintText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              height: 55,
              width: 500,

              child: ElevatedButton(
                onPressed: () {
                  Register(
                    usernamecontroller.text,
                    emailcontroller.text,
                    passwordcontroller.text,
                    context,
                  );
                },
                child: Text("sign up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      CupertinoColors.secondarySystemGroupedBackground,
                  foregroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have a account",
                  style: TextStyle(color: const Color.fromARGB(255, 8, 6, 0)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 36, 50, 249),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
