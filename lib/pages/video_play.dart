import 'package:flutter/material.dart';

class VideoPlay extends StatelessWidget {
  const VideoPlay({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.30,
            width: width * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/itachi.jpg"), fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
