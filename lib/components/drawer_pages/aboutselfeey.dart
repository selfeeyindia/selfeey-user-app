import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutSelfeeyPage extends StatefulWidget {
  const AboutSelfeeyPage({super.key});

  @override
  State<AboutSelfeeyPage> createState() => _AboutSelfeyPageState();
}

class _AboutSelfeyPageState extends State<AboutSelfeeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("About Selfeey Page")),
      ),
    );
  }
}
