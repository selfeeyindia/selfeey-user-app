import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfeey/Pages/shorts/shorts_page.dart';

import '../home_page.dart';
import 'reel.dart';

class ShortsPreviewPage extends StatefulWidget {
  const ShortsPreviewPage({super.key});

  static List reel = [];

  @override
  State<ShortsPreviewPage> createState() => _ShortsPreviewPageState();
}

class _ShortsPreviewPageState extends State<ShortsPreviewPage> {

   var vid = '';


  List shorts = [
    {
      'id': 0,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/spunky-sam-green.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
    {
      'id': 2,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/spunky-sam.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
    {
      'id': 3,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/purple-pi-teal.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
    {
      'id': 4,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/primosaur-tree.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
    {
      'id': 5,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/old-spice-man-blue.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
    {
      'id': 6,
      'thumbnail':
          'https://www.kasandbox.org/programming-images/avatars/mr-pants-green.png',
      'name': 'jeff',
      'video':
          'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
      'profilePic':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              'All',
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
                              'All',
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
                              'All',
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
                              'All',
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
                              'All',
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
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: shorts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) {
                    var shortDetail = shorts[index];

                    print(ShortsPreviewPage.reel);
                    //print(ShortsPreviewPage.reel);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                        Get.to(Reel());

                          // setState(() {
                          //  vid=shortDetail['video'];
                          //  ShortsPreviewPage.reel.add(vid);
                          // });
                          // print(  ShortsPreviewPage.reel);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey.shade200)),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    shortDetail['thumbnail'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white.withOpacity(
                                    0.7,
                                  ),
                                  size: 40,

                                ),
                              ),

                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CircleAvatar(
                                            maxRadius: 10,
                                            backgroundImage:
                                            NetworkImage(shortDetail['profilePic']),
                                          ),
                                          SizedBox(width: 6,),
                                          Text(shortDetail['name'],style: TextStyle(fontSize: 16,fontFamily: 'Calibri',color: Colors.black54),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
