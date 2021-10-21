import 'package:fitness/views/home_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',

      theme: ThemeData(
        
        fontFamily: 'Avenir',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        )
      ),

      home: const HomeView(),
    );
  }
}