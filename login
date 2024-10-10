import 'dart:async';

import 'package:flutter/material.dart';
class BU1 extends StatefulWidget {
  const BU1({super.key});

  @override
  State<BU1> createState() => _BU1State();
}

class _BU1State extends State<BU1> {
  var emailtext=TextEditingController();
  var Passwordtext=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
    
    body: Center(
      child: Container(
        
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          
          children: [
            TextField(
              controller: emailtext,
        decoration:InputDecoration(label: Text('Email'),
        hintText: 'Enter your email address',
        focusColor: Colors.grey,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25),),
        borderSide: BorderSide(
          style: BorderStyle.solid,
        
        )),
        
        ),
        
          ),
          SizedBox(height: 10),
         TextField(
          controller: Passwordtext,
        decoration:InputDecoration(label: Text('Password'),
        hintText: 'Enter your Password',
        focusColor: Colors.grey,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25),),
        borderSide: BorderSide(
          style: BorderStyle.solid,
          ),
        ), 
        ),
         obscureText: true,
         obscuringCharacter: '*', ),
          SizedBox(height: 10,),
        
        ElevatedButton.icon(onPressed: ()
        {
          String uemail=emailtext.toString();
          String upass=Passwordtext.toString();

print('$uemail and $upass');
        }, label:Text('LOGIN'))
          ],
        ),
      ),
    ),  ),
    );
  }
}
void main()
{
  runApp(BU1());
}
