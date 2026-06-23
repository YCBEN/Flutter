import 'package:flutter/material.dart';
import 'package:flutter_app/pages/views/home_page.dart';
import 'package:flutter_app/pages/views/profile_page.dart';

import '../Widgets/navbar_widget.dart';


List<Widget> pages = [
  HomePage(),
  ProfilePage()
];


class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Flutter APP'),
          ),
          
          body:pages.elementAt(0),
          bottomNavigationBar: NavbarWidget(),


      );
  }
}