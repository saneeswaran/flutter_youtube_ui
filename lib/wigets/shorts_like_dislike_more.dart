import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/constants.dart';

class ShortsLikeDislikeMore extends StatefulWidget {
  const ShortsLikeDislikeMore({
    super.key,
  });

  @override
  State<ShortsLikeDislikeMore> createState() => _ShortsLikeDislikeMoreState();
}

class _ShortsLikeDislikeMoreState extends State<ShortsLikeDislikeMore> {
  int likeCount = 5;
  int dislikeCount = 0;
  int commentCount = 20;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ))
          ],
        ),
        SizedBox(height: height * 0.21),
        iconAndCount(Icons.thumb_up_sharp, () {}, likeCount.toString()),
        iconAndCount(Icons.thumb_down, () {}, dislikeCount.toString()),
        iconAndCount(Icons.comment, () {}, commentCount.toString()),
        iconAndCount(Icons.share, () {}, "Share"),
        iconAndCount(Icons.arrow_outward_sharp, () {}, "remix"),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(naruto),
          ),
          title: Row(
            children: [
              const Text(
                "@itachi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Subscribe",
                    style: TextStyle(fontSize: 14),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Video Title",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(naruto), fit: BoxFit.contain)),
              )
            ],
          ),
        )
      ],
    );
  }

  Column iconAndCount(IconData icon, VoidCallback onPressed, String count) {
    return Column(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(icon, color: Colors.white)),
        Text(
          count,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
