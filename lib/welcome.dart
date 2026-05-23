import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/download.jpg",
            ),

            SizedBox(height: 35),
            SizedBox(height: 55,
            width: 800,
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                child: Text("login",style: TextStyle(fontSize: 20 ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 240, 250, 95),
                  foregroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(height: 55,
            width: 800,
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));},
                child: Text("sign up",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 215, 225, 62),
                  foregroundColor: const Color.fromARGB(255, 14, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
