import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfeey/Log%20in/loginpageview/personaldetails.dart';
import 'package:selfeey/Log%20in/loginpageview/studentOrProffessioninformationpage.dart';


import 'Citypage.dart';
import 'Proffessionpage.dart';

class LoginPageViewForm extends StatefulWidget {
  @override
  _LoginPageFormState createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageViewForm> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  void _navigateToNextPage() {
    if (_currentPage < 3) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          ' ${_currentPage + 1}/4',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black54),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){
        // Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black54,)),
      ),

      body: SafeArea(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   child: Text(
            //     ' ${_currentPage + 1}/4',
            //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  NameNumberEmailPage(onSave: _navigateToNextPage),
                  SelectProffesionOptionPage(onSave: _navigateToNextPage),
                  StudenProfessionInformationpage(onSave: _navigateToNextPage),
                  CityPage(onSave: _navigateToNextPage),
                  // ProfessionPage(() {
                  //   _pageController.nextPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.easeInOut,
                  //   );
                  // }),
                  // ExperiencePage(() {
                  //   _pageController.nextPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.easeInOut,
                  //   );
                  // }),
                  // LocationPage(() {
                  //   showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         title: Text('Summary'),
                  //         content: Text('Collected information:\n'
                  //             'Name: ${PersonalInfoPage.name}\n'
                  //             'Email/Number: ${PersonalInfoPage.emailOrNumber}\n'
                  //             'Profession: ${ProfessionPage.profession}\n'
                  //             'Experience: ${ExperiencePage.experience}\n'
                  //             'Location: ${LocationPage.city}'),
                  //         actions: [
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.of(context).pop();
                  //               // You can navigate to the next screen or perform other actions here
                  //             },
                  //             child: Text('OK'),
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //   );
                  // }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
