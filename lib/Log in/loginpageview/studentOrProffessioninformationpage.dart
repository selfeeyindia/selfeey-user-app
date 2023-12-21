import 'package:flutter/material.dart';

import 'Proffessionpage.dart';

class StudenProfessionInformationpage extends StatefulWidget {
  static bool onClick = false;
  final VoidCallback onSave;

  StudenProfessionInformationpage({required this.onSave});

  @override
  State<StudenProfessionInformationpage> createState() =>
      _StudenInformationpageState();
}

class _StudenInformationpageState
    extends State<StudenProfessionInformationpage> {
  bool isStudyingSelected = false;
  bool isWorkingSelected = false;

  String selectedOption = '';

  String selectedProfessionButton = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Colorful Buttons'),
        // ),
        body: Column(
          children: [
            SelectProffesionOptionPage.onbuttonClick
                ? Column(children: [
                    Text(
                      "Which class are you currently studying?",
                      style: TextStyle(
                          fontFamily: "Calibri",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyButtonRow(),
                  ])
                : Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Are you Fresher or Experienced?",
                            style: TextStyle(
                                fontFamily: "Calibri",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isStudyingSelected = true;
                                isWorkingSelected = false;
                                selectedOption = 'Fresher';
                                // SelectProffesionOptionPage.onbuttonClick = true;
                                selectedProfessionButton = 'Fresher';
                                StudenProfessionInformationpage.onClick = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 20),
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              primary: selectedProfessionButton == 'Fresher'
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            child: Text(
                              'Fresher',
                              style: TextStyle(
                                color: selectedProfessionButton == 'Fresher'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                //  SelectProffesionOptionPage.onbuttonClick =   false;
                                selectedOption = 'Experienced';
                                // isStudyingSelected = !isStudyingSelected;
                                isWorkingSelected = true;
                                isStudyingSelected = false;
                                selectedProfessionButton = 'Experienced';
                                StudenProfessionInformationpage.onClick = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 20),
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              primary: selectedProfessionButton == 'Experienced'
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            child: Text(
                              'Experienced',
                              style: TextStyle(
                                color: selectedProfessionButton == 'Experienced'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ]),
                  ),

            //SelectProffesionOptionPage.onbuttonClick

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 20),
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // primary:
                //     selectedOption == 'Working' ? Colors.blue : Colors.white,
              ),
              onPressed: () {
                widget.onSave();
                // if (selectedOption.isNotEmpty) {
                //   widget.onSave();
                //   print('Selected Option: $selectedOption');
                // } else {
                //   showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //       title: Text('Error'),
                //       content: Text('Please Select any one of the option.'),
                //       actions: [
                //         ElevatedButton(
                //           onPressed: () {
                //             Navigator.pop(context);
                //           },
                //           child: Text('OK'),
                //         ),
                //       ],
                //     ),
                //   );
                // }
              },
              child: Text(
                'Save and Continue',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButtonRow extends StatefulWidget {
  @override
  _MyButtonRowState createState() => _MyButtonRowState();
}

class _MyButtonRowState extends State<MyButtonRow> {
  // // List<bool> _isSelected = [false, false, false, false];
  // String selectedNormalButton = '';

  // List listitem = ["UG", "MCA", "MBA", "MS"];
  // String valueChoose = '';
  // //String selectedOption = '';

  // bool isStudyingSelected = false;
  // bool isWorkingSelected = false;

  // String selectedOption = '';
  // String selectedProfessionButton = '';
  bool isStudyingSelected = false;
  bool isWorkingSelected = false;

  String selectedOption = '';

  String selectedProfessionButton = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              // isonetofiveSelected = true;
              // issixtotenSelected = false;
              // iseleventotwelveSelected = false;
              // //selectedOption = '1-5';
              // selectedNormalButton = '1-5';
              isStudyingSelected = true;
              isWorkingSelected = false;
              selectedOption = '8-12';
              // isStudyingSelected = !isStudyingSelected;
              isWorkingSelected = true;
              //isStudyingSelected = false;
              selectedProfessionButton = '8-12';
            });
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 20),
            padding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            primary:
                selectedProfessionButton == '8-12' ? Colors.blue : Colors.white,
          ),
          child: Text(
            '8-12',
            style: TextStyle(
              color: selectedProfessionButton == '8-12'
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              // isonetofiveSelected = false;
              // issixtotenSelected = false;
              // iseleventotwelveSelected = true;
              // // selectedOption = '11-12';

              // selectedNormalButton = '11-12';
              selectedOption = 'UG-PG';
              isWorkingSelected = true;
              isStudyingSelected = false;

              // selectedOption = '11-12';
              // isStudyingSelected = !isStudyingSelected;
              // isWorkingSelected = false;

              selectedProfessionButton = 'UG/PG';

              ///
            });
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 20),
            padding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            primary: selectedProfessionButton == 'UG/PG'
                ? Colors.blue
                : Colors.white,
          ),
          child: Text('UG/PG',
              style: TextStyle(
                color: selectedProfessionButton == 'UG/PG'
                    ? Colors.white
                    : Colors.black,
              )),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // DropdownButton(
              //   value: valueChoose,
              //   onChanged: (newValue) {
              //     setState(() {
              //       valueChoose = newValue;
              //     });
              //   },
              //   items: listitem.map((valueitem) {
              //     return DropdownMenuItem(
              //       child: Text(valueitem),
              //     );
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
