import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:selfeey/Pages/shorts/shorts_preview_page.dart';

import 'content_screen.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ContentScreen(
                src: ShortsPreviewPage.reel[index],
              );
            },
            itemCount: ShortsPreviewPage.reel.length,
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
    );
  }
}
