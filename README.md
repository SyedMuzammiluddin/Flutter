# Flutterstateful
import 'package:flutter/material.dart';
class B1 extends StatefulWidget {
   B1({super.key});

  @override
  State<B1> createState() => _B1State();
}

class _B1State extends State<B1> {
String ButonName='click';
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('something'),
          leading: Icon(Icons.person),
        ),
      body: Center(
        child:ElevatedButton(
          onPressed: ()
        {
          setState(() {
                      ButonName='button clicked';

          });
        }, 
        
        
        child: Text(ButonName),),

      ),
      bottomNavigationBar: BottomNavigationBar(items: [

BottomNavigationBarItem(icon: Icon(Icons.home),
label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),
      label: 'favourite'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),
      label: 'settings')
      
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        setState(() {
                        currentIndex=index;

        });
      },
),
      
      ),
    );
  }
}
void main()
{
  runApp(B1());
}
