import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'FAQ',
          style: TextStyle(fontFamily: 'Calibri', color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                ExpansionTile(
               tilePadding: EdgeInsets.all(0),
                  title: Text("What is an online consultation?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      "When you speak to a Mentor about your issues concerns through an audio/video/ chat, it is known as an online consultation. This is a good alternative for times when you cannot visit a mentor physically. An online consultation works the same way as a physical consultation where you get a prescription after the consultation is complete. ",
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("What measures does Selfeey have in place for the protection of user data security and privacy?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                            'Safety of your data is our top priority. We have multi-level security checks, multiple data backups, and stringent policies in place to ensure your data remains safe and secure. Additionally, we are an ISO 27001 certified company and we take data privacy and security very seriously. All data on Selfeey is secured with 256-bit encryption on HIPAA compliant servers.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),


                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("Why do you display Mentor photos? Isn't this advertising?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                            'No. We display Mentor photos across all Mentor profiles for User protection. Their sole purpose is to help Users make sure that they are being attended to by the same mentor they booked.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("Are your mentors qualified?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'We have a thorough verification process for every Mentor on Selfeey. Any Mentor that you consult with is a professional with all their qualifications documents manually and electronically verified by our team. We also take feedback from users to ensure that mentors maintain high standards on online consultation.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("Are the audio/video calls done during a consultation recorded?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'As per regulatory requirements, all audio and video calls done during an online consultation with the doctor, will be recorded and stored in a secure manner. The audio calls will be shared with you at the end of the consultation which you can access inside the Selfeey app. The video calls are recorded, but will not be shared with you or the doctor. They will only be shared with a competent authority upon explicit request, in case of a medico-legal requirement. They may be reviewe...',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("How do I get started on Consult?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'Just download the free Selfeey app from the AppStore/PlayStore or Web and click on Consult after signing up. You have to complete your profile and you have to be successfully verified to get started on consultation.I have completed my profile, but it still says profile verification pending.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("I have completed my profile, but it still says profile verification pending." ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'We\'re assuming that you\'ve completed both the sections of your profile - your details. Generally verifications are done within 24 hours. If yours has been pending for long than that then please reach out to us on 080-35010775. We will checkeverything and come back to you within 30 minutes.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("For how long can I speak to the Mentor?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'Once you book an online consultation on our app, you will get 15 minutes to speak to the doctor. This window can, however, change according to the number of queries you have.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),

                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text("What happens if my call gets disconnected during the consultation?" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                  children: [
                    Text(
                      'If your audio/video call gets disconnected during the online consultation, you would receive another call within a few minutes provided your internet connection is stable.',
                      style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                    ),
                  ],
                ),
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),
                //
                //
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text("" ,style: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 18)),
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(fontFamily: 'Calibri',fontSize: 16),
                //     ),
                //   ],
                // ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
