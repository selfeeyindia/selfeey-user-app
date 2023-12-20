import 'dart:async';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_codes/country_codes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';
import 'package:selfeey/Log%20in/otp_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {


  bool sendOtpButton = false;
  bool otpSection = false;

  // slider index
  int currentIndex = 0;
  // slider controller
  final CarouselController carouselController = CarouselController();

  TextEditingController countryCodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();


  // resend otp timer
  int secondsRemaining = 30;
  int _start = 30;
  bool enableResend = false;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    countryCode();
  }




  @override
  dispose(){
    timer.cancel();
    super.dispose();
  }
  void _resendCode() {
    //other code here
    setState((){
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  countryCode() {
    CountryDetails details = CountryCodes.detailsForLocale();
    Locale locale = CountryCodes.getDeviceLocale()!;
    print(details.dialCode);
    print(details.name);
    print(details.alpha2Code);
    setState(() {
      countryCodeController.text = details.dialCode!;
    });
  }

  List slider = [
    {"id": 1, "image_path": 'assets/lottie/lottie_1.json'},
    {"id": 2, "image_path": 'assets/lottie/lottie_1.json'},
    {"id": 3, "image_path": 'assets/lottie/lottie_1.json'},
  ];

  @override
  Widget build(BuildContext context) {


    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.blueAccent),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );


    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(

          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: () {},
                                  child: CarouselSlider(
                                      items: slider
                                          .map(
                                            (item) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Lottie.asset(
                                                item['image_path'],
                                                fit: BoxFit.fill,
                                                // width: double.infinity,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      carouselController: carouselController,
                                      options: CarouselOptions(
                                          scrollPhysics:
                                              const BouncingScrollPhysics(),
                                          autoPlay: true,
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.5,
                                          aspectRatio: 2,
                                          viewportFraction: 1,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          }))),
                            ),
                            Positioned(
                              bottom: 6,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: slider.asMap().entries.map((entry) {
                                  // print(entry);
                                  // print(entry.key);
                                  return GestureDetector(
                                    onTap: () => carouselController
                                        .animateToPage(entry.key),
                                    child: Container(
                                      width: currentIndex == entry.key ? 17 : 7,
                                      height: 7.0,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 3.0,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: currentIndex == entry.key
                                              ? Colors.green
                                              : Colors.black),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                otpSection?
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height * 0.44,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text('Please enter the verification code sent to\n${countryCodeController.text} - ${phoneNumberController.text}',style: TextStyle(fontSize: 16,fontFamily: 'Calibri'),),
                          ),

                          enableResend?SizedBox():Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Center(
                              child: TweenAnimationBuilder<
                                  Duration>(
                                  duration: Duration(
                                      seconds: 30),
                                  tween: Tween(
                                      begin: Duration(
                                          seconds: 30),
                                      end: Duration
                                          .zero),
                                  onEnd: () {
                                    setState(() {
                                      enableResend =
                                      true;

                                    });
                                  },
                                  builder: (BuildContext
                                  context,
                                      Duration value,
                                      Widget? child) {
                                    // final minutes = value.inMinutes;
                                    final seconds =
                                        value.inSeconds %
                                            60;
                                    return Padding(
                                        padding: const EdgeInsets
                                            .symmetric(
                                            vertical:
                                            5),
                                        child: Text(
                                            ' 00: $seconds',
                                            textAlign:
                                            TextAlign
                                                .center,
                                            style: TextStyle(
                                                fontFamily:
                                                'Poppins',
                                                fontWeight:
                                                FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 14)));
                                  }),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Pinput(
                              length: 6,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              showCursor: true,
                              onCompleted: (pin) => print(pin),
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t recive code?',style: TextStyle(fontFamily: 'Calibri'),),
                              enableResend?TextButton(onPressed: (){
                                // setState(() {
                                //   enableResend=false;
                                //
                                // });

                                _resendCode();

                              }, child: Text('Resend OTP',style: TextStyle(fontFamily: 'Calibri'))):TextButton(onPressed: (){}, child: Text('Resend OTP',style: TextStyle(fontFamily: 'Calibri',color: Colors.grey)))
                            ],
                          ),
                          TextButton(onPressed: (){
                            setState(() {
                              sendOtpButton=false;
                              otpSection=false;
                              enableResend=false;
                              phoneNumberController.clear();
                            });
                          }, child: Text('Edit Phone Number?',style: TextStyle(fontFamily: 'Calibri'),)),

                          SizedBox(height: 60,),
                          Text('Selfeey Infotech Private Limited',style: TextStyle(fontFamily:'Calibri' ,fontSize: 14,color: Colors.grey),)

                        ],
                      ),
                    )
                    :
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.44,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter Your Mobile Number',
                        style: TextStyle(fontFamily: 'Calibri', fontSize: 18),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 40,
                                  child: TextField(
                                    controller: countryCodeController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Text(
                                  "|",
                                  style:
                                      TextStyle(fontSize: 33, color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: TextField(
                                  autofocus: true,
                                  controller: phoneNumberController,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Phone Number",
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 10) {
                                      setState(() {
                                        FocusScope.of(context).unfocus();
                                        sendOtpButton = true;
                                      });

                                    } else {
                                      setState(() {
                                        sendOtpButton = false;
                                      });
                                    }
                                    print(value.length);
                                  },
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),

                      sendOtpButton?SizedBox()
                          :Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 1, // Thickness
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text('Or'),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 1, // Thickness
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      sendOtpButton?
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.4,
                          height: 46,
                          child: OutlinedButton(
                              onPressed: () async {
                                setState(() {
                                  otpSection = true;
                                });
                                await Fluttertoast.showToast(
                                    msg:
                                    'Please Enter Your Phone Number');
                                // otpTimer();
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(width: 1, color: Colors.green),
                                foregroundColor: Colors.green,
                              ),
                              child: Text(
                                'Send OTP',
                                style: TextStyle(
                                    fontFamily: 'Calibri',
                                    fontSize: 16),
                              )),
                        ),
                      )
                          :
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: GestureDetector(
                          onTap: () {
                            print('Google');
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/Logo/google.png'),
                                Text(
                                  'Continue With Google',
                                  style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('Selfeey Infotech Private Limited',style: TextStyle(fontFamily:'Calibri' ,fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}

// Stack(
// children: [
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// decoration: new BoxDecoration(
// gradient: new LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [
// Color.fromARGB(255, 25, 178, 238),
// Color.fromARGB(255, 21, 236, 229),
//
// // Color(0xFFcf1cff),
// // Color(0xFF2073d7),
// // Color(0xFF18c2f5),
// ],
// )),
// ),
// Center(
// child:
// //otp section container
//
//
//
// // user click login with phone number then this container will be show this is true or false method
//
// // continueWithPhone?
// //     Container(
// //       height: MediaQuery.of(context).size.height * 0.6,
// //       width: MediaQuery.of(context).size.width * 0.8,
// //       decoration: new BoxDecoration(
// //           color: Colors.white, borderRadius: BorderRadius.circular(8)),
// //       child: Column(
// //         // crossAxisAlignment: CrossAxisAlignment.center,
// //         // mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Align(
// //             alignment:Alignment.topCenter,
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(
// //                   horizontal: 70, vertical: 28),
// //               child: Image.asset(
// //                 'assets/Logo/logo_text.png',
// //                 fit: BoxFit.fill,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 60,),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 1, color: Colors.grey),
//                     borderRadius: BorderRadius.circular(8)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: 40,
//                       child: TextField(
//                         controller: countryCodeController,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "|",
//                       style: TextStyle(fontSize: 33, color: Colors.grey),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                         child: TextField(
//                           autofocus: true,
//                           controller: phoneNumberController,
//                           keyboardType: TextInputType.phone,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Phone Number",
//                           ),
//                           onChanged: (value){
//                             if(value.length==10){
//                                FocusScope.of(context).unfocus();
//                                setState(() {
//                                  sendOtpButton=true;
//                                });
//                             }
//                            print(value.length);
//                           },
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//           ),
// //
// //           sendOtpButton?Container(
// //             width: MediaQuery.of(context).size.width * 0.3,
// //             child: OutlinedButton(
// //                 onPressed: (){
// //
// //                 },
// //                 style: OutlinedButton.styleFrom(foregroundColor: Colors.black,),
// //                 child: Text('Send OTP',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),)),
// //           )
// //               :Container(
// //             width: MediaQuery.of(context).size.width * 0.3,
// //             child: OutlinedButton(
// //                 onPressed: () async {
// //
// //                  await Fluttertoast.showToast(msg: 'Please Enter Your Phone Number');
// //                 },
// //                 style: OutlinedButton.styleFrom(foregroundColor: Colors.grey,),
// //                 child: Text('Send OTP',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),)),
// //           )
// //
// //         ],
// //       ),
// //     )
// //     :
// Container(
// height: MediaQuery.of(context).size.height * 0.6,
// width: MediaQuery.of(context).size.width * 0.8,
// decoration: new BoxDecoration(
// color: Colors.white, borderRadius: BorderRadius.circular(8)),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 70, vertical: 24),
// child: Image.asset(
// 'assets/Logo/logo_text.png',
// fit: BoxFit.fill,
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Most Effective Life Transformation Professional Community Platform in the World',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
// ),
// ),
// ],
// ),
// ),
//
//
// Padding(
// padding: const EdgeInsets.all(22),
// child: Container(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// // GestureDetector(
// //   onTap:(){
// //     print('Phone');
// //   },
// //   child: Container(
// //     height: MediaQuery.of(context).size.height *0.05,
// //     decoration: BoxDecoration(
// //         border: Border.all(
// //           color: Colors.grey,
// //         ),
// //         borderRadius: BorderRadius.all(Radius.circular(4))
// //     ),
// //     child: Row(
// //        mainAxisAlignment: MainAxisAlignment.start,
// //       crossAxisAlignment: CrossAxisAlignment.center,
// //       children: [
// //         Padding(
// //           padding: const EdgeInsets.fromLTRB(24, 0, 16, 0),
// //           child: Icon(Icons.phone),
// //         ),
// //
// //         Text('Continue With Phone Number',style: TextStyle(fontFamily: 'Calibri'),),
// //       ],
// //     ),
// //   ),
// // ),
// //
// // SizedBox(height: 20,),
// //
// GestureDetector(
//   onTap:(){
//     print('Google');
//   },
//   child: Container(
//     height: MediaQuery.of(context).size.height *0.05,
//     decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.grey,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(4))
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//           child: Image.asset('assets/Logo/google.png'),
//         ),
//
//         Text('Continue With Google',style: TextStyle(fontFamily: 'Calibri'),),
//       ],
//     ),
//   ),
// ),
//
//
// Container(
// height: MediaQuery.of(context).size.height *0.05,
// width:  MediaQuery.of(context).size.width *1,
// child: OutlinedButton.icon(
//
// onPressed: () {
// Get.to(OTPPage());
// },
// style: OutlinedButton.styleFrom(foregroundColor: Colors.black,),
// icon:  Padding(
// padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
// child: Icon(Icons.phone),
// ),
// label:  Text('Continue With Phone Number',style: TextStyle(fontFamily: 'Calibri'),),
// ),
// ),
// SizedBox(height: 20,),
// Container(
// height: MediaQuery.of(context).size.height *0.05,
// width:  MediaQuery.of(context).size.width *1,
// child: OutlinedButton.icon(
//
// onPressed: () {
//
// },
// style: OutlinedButton.styleFrom(foregroundColor: Colors.black,),
// icon:   Padding(
// padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
// child: Image.asset('assets/Logo/google.png',scale: 50,),
// ),
// label:  Padding(
// padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
// child: Text('Continue With Google',style: TextStyle(fontFamily: 'Calibri'),),
// ),
// ),
// ),
//
//
// ],
// ),
// ),
// ),
//
// Text('Selfeey Infotech Private Limited',style: TextStyle(fontFamily:'Calibri' ,fontSize: 14,color: Colors.grey),)
// ],
// ),
// ),
//
// ),
// ],
// ),
