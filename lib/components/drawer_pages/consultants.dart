import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultantPage extends StatefulWidget {
  const ConsultantPage({super.key});

  @override
  State<ConsultantPage> createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Consultant Page")),
      ),
    );
  }
}
