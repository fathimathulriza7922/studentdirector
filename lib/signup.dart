import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
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
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 230, 175, 240),
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
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 230, 175, 240),
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
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 230, 175, 240),
              filled: true,
              suffixIcon: Icon( Icons.visibility),
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
              fillColor: const Color.fromARGB(255, 230, 175, 240),
              filled: true,
              suffixIcon: Icon( Icons.visibility),
              hintText: "password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.purple),
              ),
              ),
              ),
          
              SizedBox(height: 30),

              SizedBox(height: 55,
              width: 500,

                child: ElevatedButton(onPressed: (){}, child: Text("sign up"),style:ElevatedButton.styleFrom(backgroundColor:CupertinoColors.secondarySystemGroupedBackground,
                foregroundColor: Colors.black
                ) ,),
              ),
              
            
            

          ],
        ),
      ),

    );
  }
}
