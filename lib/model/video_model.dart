// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/pages/video_play.dart';

import '../constants.dart';

// ignore: must_be_immutable
class VideoModel extends StatefulWidget {
  const VideoModel({
    super.key,
  });

  @override
  State<VideoModel> createState() => _VideoModelState();
}

class _VideoModelState extends State<VideoModel> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.40,
      width: width * 1,
      color: Colors.white,
      child: Column(
        children: [
          //video container
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const VideoPlay()));
            },
            child: Container(
              height: height * 0.30,
              width: width * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images.first), fit: BoxFit.cover)),
            ),
          ),
          //profile and video data
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images.last),
            ),
            //title
            title: const Text(
              "video title",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //subtitle
            subtitle: Text(
              "channel name",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            // trailing
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          )
        ],
      ),
    );
  }
}
