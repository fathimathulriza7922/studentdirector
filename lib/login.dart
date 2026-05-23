import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgot.dart';
import 'package:flutter_application_1/sarvice.dart';
import 'package:flutter_application_1/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Login to yr account",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Align(alignment: Alignment.topLeft, child: Text("email")),
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 227, 239, 89),
              filled: true,
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 220, 244, 60),
                ),
              ),
              prefixIcon: Icon(
                Icons.email,
                color: const Color.fromARGB(255, 10, 11, 0),
              ),
              suffixIcon: Icon(
                Icons.check,
                color: const Color.fromARGB(255, 47, 67, 247),
              ),
            ),
          ),

          SizedBox(height: 20),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 232, 244, 74),
              filled: true,
              hintText: "password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 180, 220, 50),
                ),
              ),
              prefixIcon: Icon(
                Icons.password,
                color: const Color.fromARGB(255, 11, 11, 0),
              ),
              suffixIcon: Icon(
                Icons.check,
                color: const Color.fromARGB(255, 11, 12, 0),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Forgot()),
              );
            },
            child: Text("forgot password"),
          ),
          ElevatedButton(
            onPressed: () {
              login(emailcontroller.text, passwordcontroller.text, context);
            },
            child: Text("Login"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "dont have a account",
                style: TextStyle(color: const Color.fromARGB(255, 8, 6, 0)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  "sign up",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 82, 38, 241),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
