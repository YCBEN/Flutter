import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Flutter APP"), centerTitle: true),
          drawer: Drawer(
            child: Column(
              children: [
                // DrawerHeader(
                //   child: Text ('Drawer'), 
                // ),  
                
        
                ListTile(
                  title: Text('Logout')
                )
              ]
            )
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
              SizedBox(height: 10.0),
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
            onDestinationSelected: (int value) {
              print(value);
            },
            selectedIndex: 0,
          ),
        ),
      ),
    );
  }
}
