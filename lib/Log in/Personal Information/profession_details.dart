import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ProfessionDetails extends StatefulWidget {
  const ProfessionDetails({super.key});

  @override
  State<ProfessionDetails> createState() => _ProfessionDetailsState();
}

class _ProfessionDetailsState extends State<ProfessionDetails> {

  bool isClassSelect1=false;
  bool isClassSelect2=false;
  bool isClassSelect3=false;
  bool continueButton=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '3/4',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Text(
                  "Which class are you studying in?",
                  style: TextStyle(
                    fontFamily: "Calibri",
                    fontSize: 20,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isClassSelect1=true;
                          isClassSelect2=false;
                          isClassSelect3=false;
                          continueButton=true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            border:  isClassSelect1? GradientBoxBorder(
                              gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                              width: 1,
                            ) : Border.all(width: 1,color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              '1 to 8'   ,style: TextStyle(
                                fontFamily: "Calibri",
                                fontSize: 18,
                                color: isClassSelect1?Colors.cyanAccent.shade700:Colors.grey
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isClassSelect1=false;
                          isClassSelect2=true;
                          isClassSelect3=false;
                          continueButton=true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            border:  isClassSelect2? GradientBoxBorder(
                              gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                              width: 1,
                            ) : Border.all(width: 1,color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              '8 to 12'   ,style: TextStyle(
                                fontFamily: "Calibri",
                                fontSize: 18,
                                color: isClassSelect2?Colors.cyanAccent.shade700:Colors.grey
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isClassSelect1=false;
                          isClassSelect2=false;
                          isClassSelect3=true;
                          continueButton=true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            border:  isClassSelect3? GradientBoxBorder(
                              gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                              width: 1,
                            ) : Border.all(width: 1,color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'UG or PG'   ,style: TextStyle(
                                fontFamily: "Calibri",
                                fontSize: 18,
                                color: isClassSelect3?Colors.cyanAccent.shade700:Colors.grey
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
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

           //   Get.to(ProfessionDetails());

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
