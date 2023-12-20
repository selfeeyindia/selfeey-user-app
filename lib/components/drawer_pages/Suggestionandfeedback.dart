import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestinandfeedbackPage extends StatefulWidget {
  const SuggestinandfeedbackPage({super.key});

  @override
  State<SuggestinandfeedbackPage> createState() =>
      _SuggestionandfeedbackPageState();
}

class _SuggestionandfeedbackPageState extends State<SuggestinandfeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Suggestion and Feedback Page")),
      ),
    );
  }
}
