import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  bool bottomBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFfafafa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Icon(Icons.filter_alt_rounded,color: Colors.black54,),
                      SizedBox(width: 20,),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 16,),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFfaffff),
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFF6e6e6e),
                                  blurRadius: 0,
                                  spreadRadius: -2,
                                  offset: new Offset(2.0, 0.0),
                                ),
                              ]),
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height * 0.46,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://picsum.photos/250?image=9',
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      Text(
                                        ' Skills',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Roboto'),
                                      ),
                                      Column(
                                        children: [
                                          Text('C'),
                                          Text('Java'),
                                        ],
                                      )

                                      // ElevatedButton(
                                      //   onPressed: () {},
                                      //   style: ButtonStyle(
                                      //     backgroundColor:
                                      //         MaterialStateProperty.all(
                                      //             Color(0xFFFF2d3fa8)),
                                      //   ),
                                      //   child: Text(
                                      //     'Add My Consultant',
                                      //     style: TextStyle(
                                      //         color: Colors.white,
                                      //         fontSize: 16,
                                      //         fontWeight: FontWeight.bold),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    OutlinedButton(
                                      child: Text(
                                        'Following',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            color: Color(0xFFFF2d3fa8),
                                            width: 1),
                                        primary: Color(0xFFFF2d3fa8),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Rudra Kumar',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                '6 Followers',
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 18),
                                              ))
                                        ],
                                      ),
                                      Text(
                                        '90 % ✯ ✯ ✯ ✯ 2 Votes',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Senior Consultant @ TCS',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Divider(
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GFButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        20))),
                                                    height: 600,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.0,
                                                              vertical: 16),
                                                      child: Center(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      top: -60,
                                                      right: 12,
                                                      child:
                                                          FloatingActionButton(
                                                        onPressed: () {},
                                                        child: const Icon(
                                                            Icons.close),
                                                      )),
                                                ]);
                                          },
                                        );
                                      },
                                      text: "Audio call",
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'San Fransisco',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                      icon: Icon(
                                        Icons.phone_callback,
                                        color: Colors.green,
                                      ),
                                      type: GFButtonType.transparent,
                                    ),
                                    GFButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    20)),
                                                  ),
                                                  height: 600,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.0,
                                                            vertical: 16),
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Recharge Now',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontFamily:
                                                                        'San Fransisco',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text(
                                                                '💡 Tip: 90% users recharge for 10 mins or more',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(height: 20),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  print(
                                                                      'Container tapped');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '500',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  child: Text(
                                                                      'Proceed To Pay')),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: -64,
                                                  right: 12,
                                                  child: FloatingActionButton(
                                                    onPressed: () {},
                                                    child: Icon(Icons.close),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      text: "Chat Us",
                                      textStyle: TextStyle(
                                          fontFamily: 'San Fransisco',
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                      icon: Icon(
                                        Icons.message,
                                        color: Colors.blueAccent,
                                      ),
                                      type: GFButtonType.transparent,
                                    ),
                                    GFButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        20))),
                                                    height: 600,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.0,
                                                              vertical: 16),
                                                      child: Center(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      top: -64,
                                                      right: 12,
                                                      child:
                                                          FloatingActionButton(
                                                        onPressed: () {},
                                                        child: const Icon(
                                                            Icons.close),
                                                      )),
                                                ]);
                                          },
                                        );
                                      },
                                      text: "Video Call",
                                      textStyle: TextStyle(
                                          fontFamily: 'San Fransisco',
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                      icon: Icon(
                                        Icons.video_camera_front_outlined,
                                        color: Colors.purple,
                                      ),
                                      type: GFButtonType.transparent,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
