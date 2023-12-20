import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyandpolicyPage extends StatefulWidget {
  const PrivacyandpolicyPage({super.key});

  @override
  State<PrivacyandpolicyPage> createState() => _PrivacyandpolicyPageState();
}

class _PrivacyandpolicyPageState extends State<PrivacyandpolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Privacy and policy Page")),
      ),
    );
  }
}
