<<<<<<< HEAD
import 'package:cred/pages/base_page/base_page.dart';
import 'package:cred/pages/welcome_page/welcome_page.dart';
=======
import './pages/base_page/base_page.dart';
import 'pages/permission_page/permission_page.dart';
>>>>>>> 57ca4a24501e0612e070e8217bd5a169d407e1b1
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: const WelcomePage(),
=======
      home: const PermissionsPage(),
>>>>>>> 57ca4a24501e0612e070e8217bd5a169d407e1b1
    );
  }
}
