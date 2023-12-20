import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  //recharge amount boxes
  bool rechargeBox1=true;
  bool rechargeBox2=false;
  bool rechargeBox3=false;
  bool rechargeBox4=false;
  bool rechargeBox5=false;
  bool rechargeBox6=false;

  int rechargeAmount=100;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Wallet',
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.wallet,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Wallet Balance',
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 24),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Text(
                          'Selfeey wallet balance can be used for instant call, instant video chat, short term course enrolling',
                          style: TextStyle(
                              fontFamily: 'Calibri',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                color: Colors.grey.shade200

                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.arrow_right_arrow_left),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Transactions',style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 18),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
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
                        child: Text('Recharge Wallet',style: TextStyle(
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

                      SizedBox(height: 20,),
                      

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.checkmark_shield_fill,color: Colors.blue,),
                            SizedBox(width: 6,),
                            Text('Your money safe and protected with us',style: TextStyle( fontFamily: 'Calibri',fontSize: 16,),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.home_repair_service_rounded,color: Colors.blue,),
                            SizedBox(width: 6,),
                            Expanded(child: Text('Add more money to your wallet and connect with expert services ',style: TextStyle( fontFamily: 'Calibri',fontSize: 16,),)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(CupertinoIcons.info_circle_fill,color: Colors.blue,),
                            SizedBox(width: 6,),
                            Expanded(child: Text('Your money is only deducted when you start our service ',style: TextStyle( fontFamily: 'Calibri',fontSize: 16,),)),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
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
    );
  }
}
