import 'package:flutter/material.dart';
import 'package:instagram_log/instagram_sign/instagram_sign.dart';

import 'instagram_sign_up/instagram_sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/signup': (context) => const SignUp(),
        '/signin': (context) => const SignIn()
      },
      home: const SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
