import 'package:flutter/material.dart';
import 'package:my_inherited_app/inherited/inherited_widget.dart';
import 'package:my_inherited_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //get the user name from the inherited widget
    String username = MyInheritedWidget.of(context).userName;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("user $username",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: const Text("profile page"),
          ),
        ],
      ),
    );
  }
}
