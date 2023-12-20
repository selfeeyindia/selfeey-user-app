import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyprofilePage extends StatefulWidget {
  const MyprofilePage({super.key});

  @override
  State<MyprofilePage> createState() => _MyprofilePageState();
}

class _MyprofilePageState extends State<MyprofilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 48, // Image radius
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Praveen Jeff',
                      style: TextStyle(
                          fontFamily: 'Calibri',
                          fontSize: 20,
                          color: Colors.black54),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Basic Details',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
                              Icon(Icons.edit_outlined,color: Colors.blue,)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('Bengaluru, Karnataka',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
                        ),

                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.email_outlined,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('praveenjeff3@gmail.com',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.call_outlined,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('+91 9856321452',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.calendar_month,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('Age : 24 Years',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.note_alt_outlined,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('BCA',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.perm_identity,color: Colors.black54,),
                            SizedBox(width: 20,),
                            Text('Male',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),

                          ],
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
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Topics Interested',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
                              Icon(Icons.edit_outlined,color: Colors.blue,),
                            ],
                          ),


                        ),
                        Row(

                          children: [
                            Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                               border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Money',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                              ),
                            ),

                            SizedBox(width: 20,),
                            Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Jobs & Human Resources',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                              ),
                            ),


                          ],
                        ),
                        SizedBox(height: 16,),
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Business',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Health - Physical & Mental Fitness',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Freelance Work From Home',style: TextStyle(fontFamily: 'Calibri',fontSize: 16),),
                          ),
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
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Work Summary',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
                              Icon(Icons.edit_outlined,color: Colors.blue,),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                          child: Text('Key Skills',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                          child: Text('Goals & Ambitions',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
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
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Certification',style: TextStyle(fontFamily: 'Calibri',fontSize: 18,fontWeight: FontWeight.bold),),
                              Icon(Icons.edit_outlined,color: Colors.blue,),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
