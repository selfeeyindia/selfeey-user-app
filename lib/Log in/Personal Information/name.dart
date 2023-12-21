import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:selfeey/Log%20in/Personal%20Information/selecting_proffession.dart';
import 'package:selfeey/Log%20in/login_page.dart';

class Name extends StatefulWidget {
  const Name({super.key});



  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {

  bool emailValidate = false;
  bool phoneNumberValidate = false;
  bool nameValidate = false;
  bool continueButton = false;

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '1/4',
          style: TextStyle(color: Colors.black54),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Colors.black,
        //     )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Calibri',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextField(
                            autofocus: true,
                            controller: nameController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Name",
                                hintStyle: TextStyle(color: Colors.grey.shade500)
                            ),
                            onChanged: (value) {
                              if (value.length > 2) {
                                setState(() {
                                  nameValidate=true;
                                });
                              } else {
                                setState(() {
                                  nameValidate=false;
                                  continueButton=false;
                                });
                              }
                              print(nameValidate);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: LogIn.onEmailClick
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(6, 0, 0, 10),
                              child: Text(
                                "What\' Your Number?",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: TextField(
                                  autofocus: true,
                                  controller: phoneNumberController,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Phone Number",
                                      hintStyle: TextStyle(color: Colors.grey.shade500)
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 10) {
                                      setState(() {
                                        phoneNumberValidate=true;
                                        FocusScope.of(context).unfocus();
                                      });
                                    } else {
                                      setState(() {
                                        phoneNumberValidate=false;
                                      });
                                    }

                                    if(nameValidate==true && phoneNumberValidate == true){
                                      setState(() {
                                        continueButton=true;
                                      });
                                    } else{
                                      setState(() {
                                        continueButton=false;
                                      });
                                    }

                                    print(value.length);
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 0, 0, 10),
                        child: Text(
                          "What\' Your Email?",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Calibri',
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextField(
                            autofocus: true,
                            controller: phoneNumberController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey.shade500)
                            ),
                            onChanged: (value) {

                              print(value.length);
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child:
        continueButton? GestureDetector(
          onTap: (){

            Get.to(SelectingProfession());

          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue)),
            child: Center(child: Text('Continue',style: TextStyle(    fontFamily: 'Calibri',fontSize: 24,color: Colors.blue),)),

          ),
        ) : GestureDetector(
          onTap: () async {
            await Fluttertoast.showToast(msg: 'Please Enter Your Details');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Center(child: Text('Continue',style: TextStyle(    fontFamily: 'Calibri',fontSize: 24,color: Colors.grey),)),

          ),
        )
      ),
    );
  }
}
