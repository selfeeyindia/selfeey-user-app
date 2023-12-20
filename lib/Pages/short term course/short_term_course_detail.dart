import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfeey/widget/video_player_widget.dart';

class ShortTermCourseDetail extends StatefulWidget {
  const ShortTermCourseDetail({super.key});

  @override
  State<ShortTermCourseDetail> createState() => _ShortTermCourseDetailState();
}

class _ShortTermCourseDetailState extends State<ShortTermCourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Short term Course',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: VideoItem(
                        'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Mastering Data structure & algorithms using C and C++',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 22),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Learn analyse and implement data structure using C and C++, Learn recursion and sorting.',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Created by Abdul Bari',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 18),
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      children: [
                        Icon(Icons.info,color: Colors.blue,),
                        SizedBox(width: 4,),
                        Text(
                          'Last updated on 10/10/2023',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Icon(Icons.language,color: Colors.blue,),
                      SizedBox(width: 4,),
                      Text(
                        'English',
                        style: TextStyle(fontFamily: 'Calibri', fontSize: 16),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee,color: Colors.black54,size: 40,),
                        SizedBox(width: 4,),
                        Text(
                          '499',
                          style: TextStyle(fontFamily: 'Calibri', fontSize: 26,color:  Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
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
          child: Center(child: Text('Buy Now',style: TextStyle(    fontFamily: 'Calibri',fontSize: 24,color: Colors.blue),)),

        ),
      ),
    );
  }
}
