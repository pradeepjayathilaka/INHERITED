import 'package:flutter/material.dart';
import 'package:my_inherited_app/inherited/inherited_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //fetch the username from the inherited widget
    String username = MyInheritedWidget.of(context).userName;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$username"),
      ),
    );
  }
}
