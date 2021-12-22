import 'package:bassicapp/page1.dart';
import 'package:bassicapp/page2.dart';
import 'package:bassicapp/page3.dart';
import 'package:bassicapp/page4.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;
  var pages = [
    page1(), //0
    page2(), //1
    page3(),
    page4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(
              Icons.call,
              color: Colors.amber,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
              color: Colors.blueAccent,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.green,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.pink,
            ),
            label: 'Message',
          ),
        ],

        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },

      ),
      body: pages[_currentindex],
    );
  }
}
