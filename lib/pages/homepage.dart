import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            profile(),
            firstname(),
            nickname(),
            aboutme(),
            birthday(),
            facebook(),
            telephone(),
          ],
        ),
      ),
    );
  }

  Widget aboutme() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 10, 10),
            child: const Divider(
              thickness: 2,
              color: Colors.blue,
            ),
          ),
        ),
        Text(
          'About me',
          style: TextStyle(
            fontSize: 18,
            color: Colors.indigo[300],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 30, 10),
            child: const Divider(
              thickness: 2,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget facebook() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(8),
      height: 50,
      
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.facebook),
              ),
              Text('Nusreen Mannuy'),
          ]
          ),
      
   );
  }

  Widget profile() {
    return CircleAvatar(
      radius: 150,
      child: CircleAvatar(
        radius: 145,
        backgroundImage: AssetImage('images/1.jpg'),
             ),
    );
  }

  Widget telephone() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(8),
      height: 50,
      
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.phone_android),
              ),
              Text('0930588573'),
            ],
          ),
        
    );
  }

  Widget birthday() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(8),
      height: 50,
      
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FaIcon(FontAwesomeIcons.birthdayCake),
                  ),
                    Text('11 เมษายน 2543'),
                    ],
                  ),
              
        
      );
  }

  Text nickname() {
    return Text(
            'ชื่อเล่น รีน',
            style: TextStyle(
            color:Colors.blue[350],
            fontSize: 21,
            fontFamily: ' itim Regular'
            ),
          );
  }

  Text firstname() {
    return Text(
            'ฉันชื่อ นางสาวนุซรีน หมานนุ้ย',
            style: TextStyle(
            color:Colors.blue[350],
            fontSize: 21,
            fontFamily: ' itim Regular'),
          );
  }
}

 