import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:selfeey/Log%20in/Personal%20Information/profession_details.dart';

import 'name.dart';

class SelectingProfession extends StatefulWidget {
  const SelectingProfession({super.key});

  static bool isStudentSelected = false;

  @override
  State<SelectingProfession> createState() => _SelectingProfessionState();
}

class _SelectingProfessionState extends State<SelectingProfession> {

  bool isStudyingSelected = false;
  bool isWorkingSelected = false;
  bool continueButton = false;

  String selectedProfession = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '2/4',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                isStudyingSelected = false;
                isWorkingSelected=false;
                selectedProfession='';
                continueButton=false;
              });
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Are you presently focused on studies or  actively employed?",
                  style: TextStyle(
                    fontFamily: "Calibri",
                    fontSize: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStudyingSelected = true;
                    isWorkingSelected=false;
                    selectedProfession='Student';
                    continueButton=true;
                    SelectingProfession.isStudentSelected=true;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.27,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    // Colors.white, // Set background color to white
                    borderRadius: BorderRadius.circular(10.0),
                    border:  isStudyingSelected? GradientBoxBorder(
                      gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                      width: 1,
                    ) : Border.all(width: 1,color: Colors.grey.shade400)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                        // padding: EdgeInsets.all(1), // Border width
                         decoration: BoxDecoration( shape: BoxShape.circle,
                             border:  isStudyingSelected? GradientBoxBorder(
                               gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                               width: 1,
                             ) : Border.all(width: 1,color: Colors.grey.shade400)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(4),
                           child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.white,
                           backgroundImage: AssetImage('assets/Logo/pro1.png'), // Add your image path here
                      ),
                         ),
                       ),

                      // Container(
                      //   padding: EdgeInsets.all(8), // Border width
                      //   decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                      //   child: ClipOval(
                      //     child: SizedBox.fromSize(
                      //       size: Size.fromRadius(48), // Image radius
                      //       child: Image.asset('assets/Logo/pro1.png', fit: BoxFit.cover),
                      //     ),
                      //   ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border:  isStudyingSelected? GradientBoxBorder(
                                gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                                width: 1,
                              ) : Border.all(width: 1,color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Student'   ,style: TextStyle(
                                fontFamily: "Calibri",
                                fontSize: 18,
                                color: isStudyingSelected?Colors.cyanAccent.shade700:Colors.grey
                              ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStudyingSelected = false;
                    isWorkingSelected=true;
                    selectedProfession='Fresher or Experienced';
                    continueButton = true;
                    SelectingProfession.isStudentSelected=false;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.27,

                  decoration: BoxDecoration(
                      color: Colors.white,

                      // Colors.white, // Set background color to white
                      borderRadius: BorderRadius.circular(10.0),
                      border:  isWorkingSelected? GradientBoxBorder(
                        gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                        width: 1,
                      ) : Border.all(width: 1,color: Colors.grey.shade400)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // padding: EdgeInsets.all(1), // Border width
                        decoration: BoxDecoration( shape: BoxShape.circle,
                            border:  isWorkingSelected? GradientBoxBorder(
                              gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                              width: 1,
                            ) : Border.all(width: 1,color: Colors.grey.shade400)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/Logo/pro2.png'), // Add your image path here
                          ),
                        ),
                      ),

                      // Container(
                      //   padding: EdgeInsets.all(8), // Border width
                      //   decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                      //   child: ClipOval(
                      //     child: SizedBox.fromSize(
                      //       size: Size.fromRadius(48), // Image radius
                      //       child: Image.asset('assets/Logo/pro1.png', fit: BoxFit.cover),
                      //     ),
                      //   ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border:  isWorkingSelected? GradientBoxBorder(
                                gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                                width: 1,
                              ) : Border.all(width: 1,color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Center(
                              child: Text(
                                'Fresher or Experienced'  ,textAlign: TextAlign.center ,style: TextStyle(
                                  fontFamily: "Calibri",
                                  fontSize: 18,
                                  color: isWorkingSelected?Colors.cyanAccent.shade700:Colors.grey
                              ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
      Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child:
          continueButton? GestureDetector(
            onTap: (){

              Get.to(ProfessionDetails());

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
