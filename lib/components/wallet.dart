import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

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

 // Razorpay

  late Razorpay _razorpay;
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  // @override
  // void dispose() {
  //   _razorpay.clear(); // Removes all listeners
  //   super.dispose();
  // }


  void openCheckout() async {
    var options = {
      'key': 'rzp_live_zCE6McM4eCJ5d6',
      'amount': 200, // paisa
      'name': 'Selfeey',
      'description': 'Recharge Wallet',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
          print('Payment Failed-> ${response.paymentId!}');
          print('Payment Failed-> ${response.orderId!}');
          print('Payment Failed-> ${response.signature!}');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
      print('Payment Failed-> ${response.message!}');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
    print('Payment via wallet done');
  }

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
        child: GestureDetector(
          onTap: (){
            openCheckout();
           // payment();
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue)),
              child: Center(child: Text('Recharge',style: TextStyle(    fontFamily: 'Calibri',fontSize: 24,color: Colors.blue),)),
          ),
        ),
      ),
    );
  }


  // not working just for reference structure

  // payment(){
  //
  //
  //
  //   var options = {
  //     'key': 'rzp_test_3LrYlTj5Fw6X40',
  //     'amount': 100, // paisa
  //     'name': 'Selfeey',
  //     'order_id': '845120',
  //     'order':{
  //       'id':'ghbjnm',
  //       'amount':100,
  //       'amount_paid':0,
  //       'amount_due':0,
  //       'currency':'INR',
  //       'receipt':'Receipt 1',
  //       'status':'created',
  //       'attempts':0
  //     },
  //     'description': 'Appointment Booking ',
  //     'timeout': 300,// in seconds
  //     'currency':'INR',
  //     'prefill': {
  //       'contact': '9072874540',
  //       'email': 'abc@gmail.com'
  //     }
  //   };
  //
  //   print('aaaaaaaaaaaaaaaaaaaaaa');
  //
  //   var _razorpay = Razorpay();
  //
  //   try {
  //     _razorpay.open(options);
  //     print('bbbbbbbbbbbbbbb');
  //
  //     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (PaymentSuccessResponse response){
  //       print('aaaaaaaaaaaaaaaaaaaaaa');
  //       print('Payment Failed-> ${response.paymentId!}');
  //       print('Payment Failed-> ${response.orderId!}');
  //       print('Payment Failed-> ${response.signature!}');
  //     });
  //     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse response){
  //       print('Payment Failed-> ${response.message!}');
  //     });
  //     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, (ExternalWalletResponse response){
  //       print('Payment via wallet done');
  //     });
  //
  //    // print('ccccccccccccccccccccccccccc');
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print('object');
  //       print('Got Exception$e');
  //     }
  //   }
  // }


}
