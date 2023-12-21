import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DefaultLoading extends StatelessWidget {
  const DefaultLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
             // height: MediaQuery.of(context).size.height * 0.4,
              child: Lottie.asset('assets/lottie/loading.json')),
        ),
      ),
    );
  }
}
