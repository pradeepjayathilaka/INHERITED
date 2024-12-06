import 'package:flutter/material.dart';
import 'package:my_inherited_app/inherited/inherited_widget.dart';
import 'package:my_inherited_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      userName: 'Pradeep prasanna',
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
