import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24, // Image radius
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Praveen jeff',style: TextStyle(fontFamily: 'Calibri',fontSize: 20)),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.public,size: 16,),
                            SizedBox(width: 6,),
                            Text('Public',style: TextStyle(fontFamily: 'Calibri',fontSize: 14),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 60, 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            color: Colors.white
          ),
          child: Center(child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.black54,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.photo,color: Colors.black54,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.video_call_rounded,color: Colors.black54,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.video_camera_back_rounded,color: Colors.black54,)),
            ],
          )),

        ),
      ),

    );
  }
}
