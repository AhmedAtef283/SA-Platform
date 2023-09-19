import 'package:flutter/material.dart';
import 'package:ieee/sign_up/sign_up_view.dart';
import 'package:ieee/sign_up/widgets/sign_up_view_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IEEE Platform',
      home: SignUpView(),
    );
  }
}
