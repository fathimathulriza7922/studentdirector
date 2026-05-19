import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: Column(children: [
      Text("Login",style: TextStyle(
        fontSize: 30,fontWeight: FontWeight.bold)
        ),
        Text("Login to yr account",
        style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        SizedBox(height: 30,),
        Align(alignment: Alignment.topLeft,child: Text("email")),
        TextField(
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 234, 178, 239),
            filled: true,
            hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.email,color:Colors.purple ),
            suffixIcon: Icon(Icons.check,color: Colors.green),

          ),
        ),
        SizedBox(height: 20),
        TextField(decoration: InputDecoration(fillColor: const Color.fromARGB(255, 237, 165, 249),
        filled: true,
        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.purple),
          ),
          prefixIcon: Icon(Icons.password,color: Colors.purple,)
          ,suffixIcon: Icon(Icons.check,color: Colors.green),
          ),

        ),
       ElevatedButton(onPressed:(){}, child: Text("Login"),) 
        
    ],
    ),);
  }
}