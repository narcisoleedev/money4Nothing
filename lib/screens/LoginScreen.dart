import 'package:flutter/material.dart';
import './MainScreen.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(  
      appBar: AppBar(
        title: const Text('Penis'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 500,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 250,
                height: 100,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email'
                  ),
                ),
              ), 
              const SizedBox(
                width: 250,
                height: 100,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                  ),
                ),
              ), 
              SizedBox(
                width: 250,
                height: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => MainScreen())
                    );
                  },
                  child: const Text('Login')),
              )
            ], 
          ),
        ),
      )
    );
  }
}