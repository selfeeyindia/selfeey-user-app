import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {


  //recharge amount boxes
  bool rechargeBox1=true;
  bool rechargeBox2=false;
  bool rechargeBox3=false;
  bool rechargeBox4=false;
  bool rechargeBox5=false;
  bool rechargeBox6=false;

  int rechargeAmount=100;

  //checking purpose
  int balance = 30;

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
                      Icon(
                        Icons.filter_alt_rounded,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(
                                  fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(
                                  fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(
                                  fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(
                                  fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Money',
                              style: TextStyle(
                                  fontFamily: 'Calibri', fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(colors: [Color(0xFFcf1cff), Color(0xFF2860f5),Color(0xFF15e3ff)]),
                                width: 1,
                              ),
                            // border: Border.all(width: 1,
                            //
                            //     color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Column(


                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 48, // Image radius
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj5w7hYktD4byIBek2BULUelcM6ybvsS5JBA3PzmA8pA&s'),
                                        ),
                                        OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: Text('Follow',
                                                style: TextStyle(
                                                    color: Colors.black54))),
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          itemSize: 18,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          ignoreGestures: true,
                                          itemPadding:
                                              EdgeInsets.symmetric(horizontal: 2),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Praveen Jeff',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54),),
                                        Text('Senior Consultant @ TCS',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                                        Text('English, Hindi',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                                        Text('Exp: 7 Years',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                                        // GridView.builder(
                                        //
                                        //   shrinkWrap: true,
                                        //   itemCount: 8,
                                        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        //     crossAxisCount: 2,
                                        //  crossAxisSpacing: 0,
                                        //  childAspectRatio: 9 /2.4,
                                        //   ),
                                        //   itemBuilder: (context, index) {
                                        //
                                        //     return Expanded(
                                        //       child: Padding(
                                        //         padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                                        //         child: Container(
                                        //           decoration: BoxDecoration(
                                        //             border: Border.all(width: 1,color: Colors.grey.shade300),
                                        //             borderRadius: BorderRadius.circular(6),
                                        //           ),
                                        //           child: Center(child: Text('Technology',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),textAlign: TextAlign.center,)),
                                        //         ),
                                        //       ),
                                        //     );
                                        //   },
                                        // ),



                                      ],
                                    ),
                                  )

                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),

                                  ),
                                  gradient:  LinearGradient(colors: [Colors.cyanAccent.shade200,Colors.cyanAccent.shade400,Colors.cyanAccent.shade700]),
                                 // color: Colors.grey
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    TextButton.icon(     // <-- TextButton
                                      onPressed: () {
                                        if(balance<50){
                                          bottom();
                                        }
                                      },
                                      icon: Icon(
                                        CupertinoIcons.chat_bubble_2_fill,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      label: Text('Chat',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,color: Colors.white),),
                                    ),

                                    VerticalDivider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),

                                    TextButton.icon(     // <-- TextButton
                                      onPressed: () {
                                        if(balance<50){
                                          bottom();
                                        }
                                      },
                                      icon: Icon(
                                        Icons.phone,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      label: Text('Call',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,color: Colors.white),),
                                    ),


                                    VerticalDivider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),

                                    TextButton.icon(     // <-- TextButton
                                      onPressed: () {
                                        if(balance<50){
                                          bottom();
                                        }

                                      },
                                      icon: Icon(
                                        CupertinoIcons.video_camera_solid,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      label: Text('Video',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,color: Colors.white),),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

bottom(){
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        isScrollControlled: true,
        context: context,
        builder: ((context) {

          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return  SingleChildScrollView(
                  child: Stack(
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
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: Text('Low Balance Please Recharge',style: TextStyle(
                                      fontFamily: 'Calibri',
                                      color: Colors.black,
                                      fontSize: 18),),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          rechargeBox1=true;
                                          rechargeBox2=false;
                                          rechargeBox3=false;
                                          rechargeBox4=false;
                                          rechargeBox5=false;
                                          rechargeBox6=false;

                                          rechargeAmount=100;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox1?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('100',style: TextStyle(fontSize: 20,color: rechargeBox1?Colors.blue:Colors.grey),)),
                                      ),
                                    ),

                                    // GestureDetector(
                                    //   onTap: (){
                                    //
                                    //   },
                                    //   child: Container(
                                    //     width: MediaQuery.of(context).size.width *0.18,
                                    //     height: MediaQuery.of(context).size.height * 0.06,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(8),
                                    //         border: Border.all(color: Colors.grey)),
                                    //     child: Center(child: Text('100',style: TextStyle(fontSize: 20,color: Colors.grey),)),
                                    //   ),
                                    // ),


                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          rechargeBox1=false;
                                          rechargeBox2=true;
                                          rechargeBox3=false;
                                          rechargeBox4=false;
                                          rechargeBox5=false;
                                          rechargeBox6=false;

                                          rechargeAmount=200;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox2?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('200',style: TextStyle(fontSize: 20,color: rechargeBox2?Colors.blue:Colors.grey),)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          rechargeBox1=false;
                                          rechargeBox2=false;
                                          rechargeBox3=true;
                                          rechargeBox4=false;
                                          rechargeBox5=false;
                                          rechargeBox6=false;

                                          rechargeAmount=500;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox3?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('500',style: TextStyle(fontSize: 20,color: rechargeBox3?Colors.blue:Colors.grey),)),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          rechargeBox1=false;
                                          rechargeBox2=false;
                                          rechargeBox3=false;
                                          rechargeBox4=true;
                                          rechargeBox5=false;
                                          rechargeBox6=false;

                                          rechargeAmount=800;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox4?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('800',style: TextStyle(fontSize: 20,color: rechargeBox4?Colors.blue:Colors.grey),)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){

                                        setState(() {
                                          rechargeBox1=false;
                                          rechargeBox2=false;
                                          rechargeBox3=false;
                                          rechargeBox4=false;
                                          rechargeBox5=true;
                                          rechargeBox6=false;

                                          rechargeAmount=1000;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox5?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('1000',style: TextStyle(fontSize: 20,color: rechargeBox5?Colors.blue:Colors.grey),)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          rechargeBox1=false;
                                          rechargeBox2=false;
                                          rechargeBox3=false;
                                          rechargeBox4=false;
                                          rechargeBox5=false;
                                          rechargeBox6=true;

                                          rechargeAmount=2000;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.18,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: rechargeBox6?Colors.blue:Colors.grey)),
                                        child: Center(child: Text('2000',style: TextStyle(fontSize: 20,color:rechargeBox6?Colors.blue:Colors.grey),)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.blue)),
                                child: Center(child: Text('Recharge',style: TextStyle(    fontFamily: 'Calibri',fontSize: 24,color: Colors.blue),)),

                              ),
                            ),

                          ],
                        ),
                      ),
                      Positioned(
                          top: -64,
                          right: 12,
                          child:
                          FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child:  Icon(
                                Icons.close,color: Colors.black54,),
                          )
                      ),
                    ]),
                );
              });


        }));
}

}
