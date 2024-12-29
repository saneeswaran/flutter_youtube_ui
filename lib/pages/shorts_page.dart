import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/wigets/shorts_like_dislike_more.dart';

import '../constants.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
                height: height * 1,
                width: width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover)),
                // ignore: prefer_const_constructors
                child: ShortsLikeDislikeMore());
          }),
    );
  }
}
