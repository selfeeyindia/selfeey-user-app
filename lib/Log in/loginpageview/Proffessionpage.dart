import 'package:flutter/material.dart';

class SelectProffesionOptionPage extends StatefulWidget {
  static bool onbuttonClick = false;
  final VoidCallback onSave;

  SelectProffesionOptionPage({required this.onSave});

  @override
  _SelectProffessionOptionPageState createState() =>
      _SelectProffessionOptionPageState();
}

class _SelectProffessionOptionPageState
    extends State<SelectProffesionOptionPage> {
  bool isStudyingSelected = false;
  bool isWorkingSelected = false;

  String selectedOption = '';
  Color studyingButtonColor = Colors.black.withOpacity(0.5);
  Color workingButtonColor = Colors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(" Selfeey")),
      body: SafeArea(
        child: Center(
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
                      fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   studyingButtonColor = Colors.blue;
                  // });
                },
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    // Colors.white, // Set background color to white
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: isStudyingSelected
                          ? Colors.blue
                          : Colors.black.withOpacity(0.5),

                      // studyingButtonColor
                      // Colors.black, // Set border color to black
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: isStudyingSelected
                    //         ? Colors.blue
                    //         : Colors.black.withOpacity(0.5),
                    //     //withOpacity(0.5)
                    //     //studyingButtonColor,
                    //     // Colors.black.withOpacity( 0.2), // Set box shadow color to black with opacity
                    //     spreadRadius: 2,
                    //     blurRadius: 4,
                    //     offset: Offset(0, 2),
                    //   ),
                    // ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.amber,
                        // backgroundImage: AssetImage('assets/your_image.jpg'), // Add your image path here
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isStudyingSelected = true;
                            isWorkingSelected = false;
                            selectedOption = 'Student';
                            SelectProffesionOptionPage.onbuttonClick = true;
                            // studyingButtonColor = Colors.blue;
                            // workingButtonColor = Colors.black.withOpacity(0.5);
                            // ;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 20),
                          padding: EdgeInsets.all(10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary:
                              selectedOption == 'Student' ? Colors.blue : null,
                        ),
                        child: Text(
                          'Student',
                          style: TextStyle(
                            color: selectedOption == 'Student'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   workingButtonColor = Colors.blue;
                    // });
                  },
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set background color to white
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: isWorkingSelected
                              ? Colors.blue
                              : Colors.black.withOpacity(0.5)

                          //studyingButtonColor
                          // Colors.black, // Set border color to black
                          ),
                      boxShadow: [],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.amber,
                          // backgroundImage: AssetImage('assets/your_image.jpg'), // Add your image path here
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              SelectProffesionOptionPage.onbuttonClick = false;
                              selectedOption = 'Fresher or Experienced';
                              // isStudyingSelected = !isStudyingSelected;
                              isWorkingSelected = true;
                              isStudyingSelected = false;
                              // workingButtonColor = Colors.blue;
                              // studyingButtonColor = Colors.black.withOpacity(0.5);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(150, 20),
                            padding: EdgeInsets.all(10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            primary: selectedOption == 'Fresher or Experienced'
                                ? Colors.blue
                                : Colors.white,
                          ),
                          child: Text(
                            'Fresher or Experienced',
                            style: TextStyle(
                              color: selectedOption == 'Fresher or Experienced'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 16.0),
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
                  //widget.onSave();
                  if (selectedOption.isNotEmpty) {
                    widget.onSave();
                    print('Selected Option: $selectedOption');
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Please tell us who you are.'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text(
                  'Save and Continue',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
