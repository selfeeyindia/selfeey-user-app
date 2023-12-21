// // Example for NameNumberPage.dart

// // Create more pages as needed
// Example for NameNumberEmailPage.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfeey/Pages/home_page.dart';

import '../login_page.dart';
//import 'package:selfeey/controller.dart';

class NameNumberEmailPage extends StatefulWidget {
  final VoidCallback onSave;

  NameNumberEmailPage({required this.onSave});
  @override
  State<NameNumberEmailPage> createState() => _NameNumberEmailPageState();
}

class _NameNumberEmailPageState extends State<NameNumberEmailPage> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabrial',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.all(12.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LogIn.onEmailClick
                      ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What's your number ?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabrial',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: phonenumberController,
                          decoration: InputDecoration(
                            //labelText: 'Name',
                            hintText: "Enter your number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                        ),
                      ])
                      : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What's your email  ?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabrial',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            //labelText: 'Name',
                            hintText: "Enter your email address",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                        ),
                      ]),
                  // SizedBox(
                  //   height: 30,
                  // ),
                ],
              ),
            ),

            // Center(
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       minimumSize: Size(150, 20),
            //       padding: EdgeInsets.all(10.0),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       primary: Colors.white,
            //     ),
            //     onPressed: () {
            //       // if (nameController.text.trim().isEmpty ||
            //       //     emailController.text.trim().isEmpty ||
            //       //     phonenumberController.text.trim().isEmpty) {
            //       // showDialog(
            //       //   context: context,
            //       //   builder: (context) => AlertDialog(
            //       //     title: Text('Error'),
            //       //     content: Text('This is required field'),
            //       //     actions: [
            //       //       ElevatedButton(
            //       //         onPressed: () {
            //       //           Navigator.pop(context);
            //       //         },
            //       //         child: Text('OK'),
            //       //         ),
            //       //       ],
            //       //     ),
            //       //   );
            //       // } else {
            //       // if (selectedOption.isNotEmpty) {
            //       widget.onSave();
            //       // {
            //       // } else {
            //       // showDialog(
            //       //   context: context,
            //       //   builder: (context) => AlertDialog(
            //       //     title: Text('Error'),
            //       //     content: Text('Please Select any one of the option.'),
            //       //     actions: [
            //       //       ElevatedButton(
            //       //         onPressed: () {
            //       //           Navigator.pop(context);
            //       //         },
            //       //         child: Text('OK'),
            //       //       ),
            //       //     ],
            //       //   ),
            //       // );
            //       //  }
            //     },
            //     //  },
            //     child: Text(
            //       'Save and Continue',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            // ),

      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: OutlinedButton(
              child: Text('Continue'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    width: 1, color: Colors.blue),
                foregroundColor: Colors.blue,
              ),
              onPressed: () {
                widget.onSave();
              },
            ),
          ),
        ),
      ),
          ],
        ),
      ),
    );
    // Future<void> _showAlertDialog(BuildContext context) async {
    //   return showDialog<void>(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: Text('Required Fields'),
    //           content: Text('Both text fields are required.'),
    //           actions: [
    //             TextButton(
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //               child: Text('OK'),
    //             ),
    //           ],
    //         );
    //       });
    // }
  }
}
