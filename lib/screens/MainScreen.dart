import 'package:flutter/material.dart';
import '../widgets/BottomNavigationBar.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money for Nothing'),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
      bottomNavigationBar: BottomNavigationBarApp(),
    );
  }
}
