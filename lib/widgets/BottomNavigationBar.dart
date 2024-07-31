import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatefulWidget{
  const BottomNavigationBarApp({Key? key}): super (key: key);

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {

  int _currentIndex = 0;
  void _onTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.picture_as_pdf), label: "Profile"),
        ],
      currentIndex: _currentIndex,
      selectedItemColor: const Color.fromARGB(255, 0, 119, 255),
      onTap: _onTapped,
    );
  }
}