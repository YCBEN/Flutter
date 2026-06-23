import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

//Material app (Statefull)
//Scaffold
//app title
//Bottom navigation bar setstate

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,
             brightness: Brightness.dark),
   
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter APP'),
          ),
          bottomNavigationBar: NavbarWidget(),


      ),
    );
  }
}
