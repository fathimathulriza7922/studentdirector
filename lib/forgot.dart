import 'package:flutter/material.dart';
import 'package:flutter_application_1/sarvice.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
 TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurpleAccent,
      body: Column(
        children: [
        Text("Forgot",
        style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold) ,
        ),
        SizedBox(height: 30),
        Align(alignment: Alignment.topLeft, child: Text("email")),
        TextField(controller: emailcontroller,
          decoration: InputDecoration(
            fillColor: const Color.fromARGB(255, 224, 125, 242),
            filled: true,
            hintText: "email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12),
            ),
            prefixIcon: Icon(Icons.email,color: Colors.amberAccent,),
            suffixIcon: Icon(Icons.check, color: Colors.green),

          ),
        ),
        
          ElevatedButton(onPressed: (){forgot(emailcontroller.text, context);}, child: Text("set link"),style:ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white10),),

        ],
        
              ),
          );
   
       
    
  }
}