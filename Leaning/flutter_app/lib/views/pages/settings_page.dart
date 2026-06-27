import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            return Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
        ), // when using a statfull widget we add the widget. before title
        automaticallyImplyLeading: false,
      ), // automaticallyImplyLeading: false is used to remove the automatic back button
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Hello !")),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text('Element 1')),
                  DropdownMenuItem(value: 'e2', child: Text('Element 2')),
                  DropdownMenuItem(value: 'e3', child: Text('Element 3')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Name",
                ),
                onChanged: (value) {
                  name.value = value;
                },
              ),

              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                tristate: true,
                value: isChecked,
                title: Text('Click me'),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 100,
                divisions: 200,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
              ),
              GestureDetector(
                onTap: () {
                  print('Selected Pic');
                },
                child: Image.asset(
                  'assets/images/Background.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('Selected Pic 2');
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text('Click'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Click')),

              FilledButton(onPressed: () {}, child: Text('Click')),
              OutlinedButton(onPressed: () {}, child: Text('Click')),
              TextButton(onPressed: () {}, child: Text('Click')),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
