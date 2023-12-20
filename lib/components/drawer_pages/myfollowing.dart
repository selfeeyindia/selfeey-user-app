import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFollowingPage extends StatefulWidget {
  const MyFollowingPage({super.key});

  @override
  State<MyFollowingPage> createState() => _MyFollowingPageState();
}

class _MyFollowingPageState extends State<MyFollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("My following Page")),
      ),
    );
  }
}
