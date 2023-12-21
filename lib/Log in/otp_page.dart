// import 'dart:async';
// import 'package:pinput/pinput.dart';
// import 'package:country_codes/country_codes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class OTPPage extends StatefulWidget {
//   const OTPPage({super.key});
//
//   @override
//   State<OTPPage> createState() => _OTPPageState();
// }
//
// class _OTPPageState extends State<OTPPage> {
//   bool sendOtpButton = false;
//   bool otpSection = false;
//
//   TextEditingController countryCodeController = TextEditingController();
//   TextEditingController phoneNumberController = TextEditingController();
//
//   // resend otp timer
//   int secondsRemaining = 30;
//   int _start = 30;
//   bool enableResend = false;
//   late Timer timer;
//
//
//   @override
//   void initState() {
//     super.initState();
//     countryCode();
//   }
//
//   @override
//   dispose(){
//     timer.cancel();
//     super.dispose();
//   }
//   void _resendCode() {
//     //other code here
//     setState((){
//       secondsRemaining = 30;
//       enableResend = false;
//     });
//   }
//
//   // otpTimer(){
//   //   timer = Timer.periodic(Duration(seconds: 1), (_) {
//   //     if (secondsRemaining != 0) {
//   //       setState(() {
//   //         secondsRemaining--;
//   //       });
//   //     } else {
//   //       setState(() {
//   //         enableResend = true;
//   //       });
//   //     }
//   //   });
//   // }
//
//   countryCode() {
//     CountryDetails details = CountryCodes.detailsForLocale();
//     //Locale locale = CountryCodes.getDeviceLocale()!;
//     print(details.dialCode);
//     setState(() {
//       countryCodeController.text = details.dialCode!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 50,
//       textStyle: TextStyle(
//           fontSize: 20,
//           color: Color.fromRGBO(30, 60, 87, 1),
//           fontWeight: FontWeight.w600),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(8),
//       ),
//     );
//
//     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//       border: Border.all(color: Colors.blueAccent),
//       borderRadius: BorderRadius.circular(8),
//     );
//
//     final submittedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         color: Color.fromRGBO(234, 239, 243, 1),
//       ),
//     );
//
//
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: new BoxDecoration(
//                 gradient: new LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color.fromARGB(255, 25, 178, 238),
//                 Color.fromARGB(255, 21, 236, 229),
//
//                 // Color(0xFFcf1cff),
//                 // Color(0xFF2073d7),
//                 // Color(0xFF18c2f5),
//               ],
//             )),
//           ),
//           Center(
//               child:
//                   //otp section container
//
//                   otpSection
//                       ? Container(
//                           height: MediaQuery.of(context).size.height * 0.6,
//                           width: MediaQuery.of(context).size.width * 0.8,
//                           decoration: new BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(8)),
//                           child: Column(
//                             // crossAxisAlignment: CrossAxisAlignment.center,
//                             // mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 70, vertical: 28),
//                                 child: Image.asset(
//                                   'assets/Logo/logo_text.png',
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                               SizedBox(height: 30,),
//                               Center(
//                                   child: Text(
//                                       'Enter the code from the SMS we sent to \n${countryCodeController.text +' '+phoneNumberController.text}',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),)),
//
//                               SizedBox(height: 20,),
//                               // Center(
//                               //   child: enableResend?Text(''):Text('00 : '+secondsRemaining.toString()),
//                               // ),
//                               enableResend?SizedBox():Center(
//                                 child: TweenAnimationBuilder<
//                                     Duration>(
//                                     duration: Duration(
//                                         seconds: 30),
//                                     tween: Tween(
//                                         begin: Duration(
//                                             seconds: 30),
//                                         end: Duration
//                                             .zero),
//                                     onEnd: () {
//                                       setState(() {
//                                         enableResend =
//                                         true;
//
//                                       });
//                                     },
//                                     builder: (BuildContext
//                                     context,
//                                         Duration value,
//                                         Widget? child) {
//                                       // final minutes = value.inMinutes;
//                                       final seconds =
//                                           value.inSeconds %
//                                               60;
//                                       return Padding(
//                                           padding: const EdgeInsets
//                                               .symmetric(
//                                               vertical:
//                                               5),
//                                           child: Text(
//                                               ' 00: $seconds',
//                                               textAlign:
//                                               TextAlign
//                                                   .center,
//                                               style: TextStyle(
//                                                   fontFamily:
//                                                   'Poppins',
//                                                   fontWeight:
//                                                   FontWeight.w400,
//                                                   color: Colors.black,
//                                                   fontSize: 14)));
//                                     }),
//                               ),
//
//                               Padding(
//                                 padding: const EdgeInsets.all(12),
//                                 child: Pinput(
//                                   length: 6,
//                                   defaultPinTheme: defaultPinTheme,
//                                   focusedPinTheme: focusedPinTheme,
//                                   submittedPinTheme: submittedPinTheme,
//                                   showCursor: true,
//                                   onCompleted: (pin) => print(pin),
//                                 ),
//                               ),
//
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text('Don\'t recive code?',style: TextStyle(fontFamily: 'Calibri'),),
//                                   enableResend?TextButton(onPressed: (){
//                                     // setState(() {
//                                     //   enableResend=false;
//                                     //
//                                     // });
//
//                                   _resendCode();
//
//                                   }, child: Text('Resend OTP',style: TextStyle(fontFamily: 'Calibri'))):TextButton(onPressed: (){}, child: Text('Resend OTP',style: TextStyle(fontFamily: 'Calibri',color: Colors.grey)))
//                                 ],
//                               ),
//                               TextButton(onPressed: (){
//                                 setState(() {
//                                   otpSection=false;
//                                   enableResend=false;
//                                   phoneNumberController.clear();
//                                 });
//                               }, child: Text('Edit Phone Number?',style: TextStyle(fontFamily: 'Calibri'),))
//
//                             ],
//                           ),
//                         )
//                       : Container(
//                           height: MediaQuery.of(context).size.height * 0.6,
//                           width: MediaQuery.of(context).size.width * 0.8,
//                           decoration: new BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(8)),
//                           child: Column(
//                             // crossAxisAlignment: CrossAxisAlignment.center,
//                             // mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Align(
//                                 alignment: Alignment.topCenter,
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 70, vertical: 28),
//                                   child: Image.asset(
//                                     'assets/Logo/logo_text.png',
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 60,
//                               ),
//                               Center(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 55,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             width: 1, color: Colors.grey),
//                                         borderRadius: BorderRadius.circular(8)),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         SizedBox(
//                                           width: 40,
//                                           child: TextField(
//                                             controller: countryCodeController,
//                                             keyboardType: TextInputType.number,
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           "|",
//                                           style: TextStyle(
//                                               fontSize: 33, color: Colors.grey),
//                                         ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Expanded(
//                                             child: TextField(
//                                           autofocus: true,
//                                           controller: phoneNumberController,
//                                           keyboardType: TextInputType.phone,
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: "Phone Number",
//                                           ),
//                                           onChanged: (value) {
//                                             if (value.length == 10) {
//                                               FocusScope.of(context).unfocus();
//                                               setState(() {
//                                                 sendOtpButton = true;
//                                               });
//                                             } else{
//                                               setState(() {
//                                                 sendOtpButton=false;
//                                               });
//
//                                             }
//                                             print(value.length);
//                                           },
//                                         ))
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               sendOtpButton
//                                   ? Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.3,
//                                       child: OutlinedButton(
//                                           onPressed: () {},
//                                           style: OutlinedButton.styleFrom(
//                                             foregroundColor: Colors.black,
//                                           ),
//                                           child: Text(
//                                             'Send OTP',
//                                             style: TextStyle(
//                                                 fontFamily: 'Calibri',
//                                                 fontSize: 16),
//                                           )),
//                                     )
//                                   : Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.3,
//                                       child: OutlinedButton(
//                                           onPressed: () async {
//                                             setState(() {
//                                               otpSection = true;
//                                             });
//                                             await Fluttertoast.showToast(
//                                                 msg:
//                                                     'Please Enter Your Phone Number');
//                                            // otpTimer();
//                                           },
//                                           style: OutlinedButton.styleFrom(
//                                             foregroundColor: Colors.grey,
//                                           ),
//                                           child: Text(
//                                             'Send OTP',
//                                             style: TextStyle(
//                                                 fontFamily: 'Calibri',
//                                                 fontSize: 16),
//                                           )),
//                                     )
//                             ],
//                           ),
//                         )),
//         ],
//       ),
//     );
//   }
// }
