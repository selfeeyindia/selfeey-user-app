import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:selfeey/Log%20in/login_page.dart';
import 'package:selfeey/Pages/home_page.dart';
import 'package:selfeey/Pages/post_page.dart';
import 'package:selfeey/Pages/shorts/shorts_page.dart';
import 'package:selfeey/Pages/shorts/shorts_preview_page.dart';
import 'package:selfeey/widget/loading_widget.dart';

import '../components/drawer_pages/Bill.dart';
import '../components/drawer_pages/Helpandsupport.dart';
import '../components/drawer_pages/Myprofile.dart';
import '../components/drawer_pages/Suggestionandfeedback.dart';
import '../components/drawer_pages/Termsandconditions.dart';
import '../components/drawer_pages/aboutselfeey.dart';
import '../components/drawer_pages/appointments.dart';
import '../components/drawer_pages/consultants.dart';
import '../components/drawer_pages/faq.dart';
import '../components/drawer_pages/myfollowing.dart';
import '../components/drawer_pages/privacyandpoloicy.dart';
import '../components/drawer_pages/selfeeyconsultationprocess.dart';
import '../components/drawer_pages/settings.dart';
import '../components/wallet.dart';
import 'call_page.dart';
import 'short term course/short_term_course.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavBar> {
  int selectedIndex = 0;

  bool defaultLoading = false;

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
  }

  final pages =  [
    const HomePage(),
    const ShortsPreviewPage(),
    const CallPage(),
    const PostPage(),
    const ShortTermCourse(),
    const ShortTermCourse(),
    const ShortsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      backdropColor: Colors.white,
      openRatio: 0.7,
      openScale: 0.8,
      rtlOpening: true,
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1,color: Colors.grey.shade400)
      ),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),

      drawer: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Image.asset('assets/Logo/logo.png',scale: 3,),
            ),

            ListTile(
              onTap: () {
                Get.to(MyprofilePage());
              },
              leading: Icon(Icons.person),
              title: Text('My Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('My Following'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Billing'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Help & Support'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Suggestion & Feedback'),
            ),
            ListTile(
              onTap: () {
                Get.to(FaqPage());
              },
              leading: Icon(CupertinoIcons.quote_bubble_fill),
              title: Text('FAQ'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('About Selfeey'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Selfeey Consultation Process'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Privacy & Policy'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text('Terms & Conditions'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () async {

               _advancedDrawerController.hideDrawer();
                await Future.delayed(const Duration(milliseconds: 1000));
                setState(() {
                  defaultLoading=true;
                });
               await logOut();
               Get.to(LogIn());
               //dont need after redirecting next but i give just for testing purpose
                setState(() {
                  defaultLoading=false;
                });
              },
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: ListTile(
                    onTap: () {
                      _advancedDrawerController.hideDrawer();
                    },
                    leading: Icon(CupertinoIcons.clear_circled,size: 40,),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),),
      child: defaultLoading ? DefaultLoading():Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/Logo/logo_text.png',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width * 0.36,
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.circle_notifications_rounded,size: 30,color: Colors.black54,)),
            IconButton(onPressed: (){
              Get.to(Wallet());
            }, icon: Icon(Icons.wallet,size: 30,color: Colors.black54,)),

            IconButton(onPressed: (){
              drawerController();
            }, icon: Icon(Icons.menu,size: 30,color: Colors.black54,)),

          ],

        ),
        

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: GNav(
            backgroundColor: Colors.white70,
            color: Colors.black,
            tabBorderRadius: 8,
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 14),
            tabBackgroundGradient: LinearGradient(colors: [Colors.cyanAccent.shade400,Colors.cyanAccent.shade200]),
            tabs: const [
              GButton(icon: Icons.home_outlined, text: " Home"),
              GButton(icon: Icons.play_circle_outline, text: " Shorts"),
              GButton(icon: Icons.call_outlined, text: " Call"),
              GButton(icon: Icons.add_circle_outline_outlined,),
              GButton(icon: Icons.note_alt_outlined, text: " Course",),
              GButton(icon: CupertinoIcons.briefcase, text: " Trending Jobs",),
              GButton(icon: CupertinoIcons.person_3, text: " My Connection"),
            ],
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
              // if(selectedIndex==1){
              //   Get.to(ShortsPage());
              // }
              // print(selectedIndex);
            },
          ),
        ),
        body: pages[selectedIndex],
      ),
    );
  }
  void drawerController() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  logOut() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      await googleSignIn.disconnect();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print('can not signOut as : $e');
    }
  }

}