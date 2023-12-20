import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfeey/Pages/short%20term%20course/short_term_course_detail.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class ShortTermCourse extends StatefulWidget {
  const ShortTermCourse({super.key});

  @override
  State<ShortTermCourse> createState() => _ShortTermCourseState();
}

class _ShortTermCourseState extends State<ShortTermCourse> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {

                  return GestureDetector(
                    onTap: (){
                      Get.to(ShortTermCourseDetail());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.grey.shade200),
                        //   borderRadius: BorderRadius.circular(8)
                        //
                        // ),
                        child: Column(

                         children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network('https://firebasestorage.googleapis.com/v0/b/gift-c0314.appspot.com/o/WhatsApp%20Image%202023-12-12%20at%201.31.31%20PM.jpeg?alt=media&token=3361911f-50bf-4da0-a52b-2996a30bab4b',
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height * 0.22,
                                  width: MediaQuery.of(context).size.width * 0.4,)),
                           SizedBox(height: 14,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   width: 100,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Text('Meditation and Beyond',style: TextStyle(fontFamily: 'Calibri',fontSize: 14,fontWeight: FontWeight.w700),),
                                       SizedBox(height: 4,),
                                       Text('Meditation, Positivity',style: TextStyle(fontSize: 10),)
                                     ],
                                   ),
                                 ),
                                 Text('₹ 158',style: TextStyle(fontSize: 18,color: Colors.blueAccent,),)
                               ],
                             ),
                           ),
                         ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}