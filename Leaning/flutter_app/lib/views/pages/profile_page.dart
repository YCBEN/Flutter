import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Hello !")),

          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: "Name",
            ),
            onChanged: (value) {
              name.value = value;
            },
          ),
        ],
      ),
    );
  }
}
