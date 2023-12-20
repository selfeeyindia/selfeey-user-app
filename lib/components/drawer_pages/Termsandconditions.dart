import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsandConditionPage extends StatefulWidget {
  const TermsandConditionPage({super.key});

  @override
  State<TermsandConditionPage> createState() => _TermsandconditionPageState();
}

class _TermsandconditionPageState extends State<TermsandConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Privacy and policy Page")),
      ),
    );
  }
}
