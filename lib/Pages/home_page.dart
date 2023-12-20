import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfeey/components/wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  List imageList = [
    {"id": 1, "image_path": 'assets/banner/01_1.png'},
    {"id": 2, "image_path": 'assets/banner/02_1.png'},
    {"id": 3, "image_path": 'assets/banner/03_1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                            child: InkWell(
                                onTap: () {},
                                child: CarouselSlider(
                                    items: imageList
                                        .map(
                                          (item) => ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              item['image_path'],
                                              fit: BoxFit.cover,
                                              width: double.infinity,
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
                                                0.2,
                                        aspectRatio: 2,
                                        viewportFraction: 1,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            currentIndex = index;
                                          });
                                        }))),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imageList.asMap().entries.map((entry) {
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
                                            ? Colors.blueAccent
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

              SizedBox(
                height: 20,
              ),

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Add a contact to your personal network\,avail any service instanly',
                        style: TextStyle(fontSize: 18, fontFamily: 'Calibri'),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/mentor/m1.png',
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Container(
                                    height: 40,
                                    child: Text(
                                      'New Startup Support  ',
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: 'Calibri'),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: OutlinedButton(
                                  child: Text('Add My Expert'),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1, color: Colors.blue),
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/mentor/m2.png',
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Container(
                                    height: 40,
                                    child: Text(
                                      'Campus Interview Counsellor ',
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: 'Calibri'),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: OutlinedButton(
                                  child: Text('Add My Counsellor'),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1, color: Colors.blue),
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/mentor/m3.png',
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Container(
                                    height: 40,
                                    child: Text(
                                      'Senior Coach-Life Logevity Secrets  ',
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: 'Calibri'),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: OutlinedButton(
                                  child: Text('Add My Coach'),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1, color: Colors.blue),
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/mentor/m4.png',
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Container(
                                    height: 40,
                                    child: Text(
                                      'Trainer ',
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: 'Calibri'),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: OutlinedButton(
                                  child: Text('Add My Trainer'),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1, color: Colors.blue),
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: OutlinedButton(
                          child: Text('View All Experts'),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.blue),
                            foregroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Text(
                        'Free Direct access to India\'s top Experts,\nConsultants,Trainees,Counsellors,Mentors',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18, fontFamily: 'Calibri'),
                      ),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/banner/004.png',
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
              ),

              // reals

              //reels

              // talk to best experts

              // talk to best experts

              SizedBox(
                height: 20,
              ),

              // how selfeey works
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'How Selfeey Works',
                      style: TextStyle(fontFamily: 'Calibri', fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone1.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Select Your Personal Consultant',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone2.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Add Consultant in your network',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone3.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Message and Live Video Chat',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone4.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Ask and Learn from Consultant',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone5.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Get Expert Support',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone6.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Constant Learning',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone7.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Accerlerate Growth',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/selfeey_works/phone8.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Transform Life',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Calibri'),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // how selfeey works

              // why selfeey

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Why Selfeey?',
                      style: TextStyle(fontFamily: 'Calibri', fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.checkmark_seal_fill,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Who it\' Best For',
                                  style: TextStyle(
                                      fontFamily: 'Calibri', fontSize: 16),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.checkmark_seal_fill,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'All Free Standards Feature For Users',
                                  style: TextStyle(
                                      fontFamily: 'Calibri', fontSize: 16),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.checkmark_seal_fill,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'All Free Standards Benefits For Users',
                                  style: TextStyle(
                                      fontFamily: 'Calibri', fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // why selfeey

              //footer

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          'Selfeey',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 28,),
                        ),
                      ),
                      Text(
                        'Our Mission',
                        style: TextStyle(fontFamily: 'Calibri', fontSize: 22),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            text: TextSpan(
                              text: "It is our mission to scale ",
                              style: TextStyle(
                                fontFamily: 'Calibri',
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                  text: "Selfeey",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ", enable billion people to find best Experts, Consultants, Trainers & Business Advisors.",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'A complete all-in-one cost effective service Book a personal consultation with 100% Verified Experts, Counsellors, Trainers, Consultants, Professionals',
                              style: TextStyle(fontSize: 18,fontFamily: 'Calibri'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: OutlinedButton(
                          child: Text('Know More',style: TextStyle(fontSize: 16,fontFamily: 'Calibri'),),
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            side: BorderSide(
                                width: 1, color: Colors.blue),
                            foregroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),

                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Image.asset('assets/Logo/logo_text.png',scale: 4,),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('by',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                              SizedBox(width: 4,),
                              Text('Selfeey Infotech Private Limited',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),
              )
              //footer
            ],
          ),
        ),
      ),
    );
  }
}
