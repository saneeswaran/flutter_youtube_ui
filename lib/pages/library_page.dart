import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/constants.dart';
import 'package:flutter_youtube_ui/model/history_model.dart';
import 'package:flutter_youtube_ui/wigets/playlist_botton.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/geto.jpg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //profile
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(geto),
                radius: 30,
              ),
              title: const Text(
                "Itachi Game Zone  ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  const Text(
                    "@itachi",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("View channel")),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "History",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            //history model
            const HistoryModel(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    "Playlists",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.35,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            //playlist buttons
            PlaylistBotton(
                icon: Icons.video_file, text: "Your Videos", onTap: () {}),
            PlaylistBotton(
                icon: Icons.download, text: "Downloads", onTap: () {}),
            PlaylistBotton(
                icon: Icons.shopping_bag,
                text: "Shopping Wishlist",
                onTap: () {}),
            const Divider(
              color: Colors.grey,
            ),

            PlaylistBotton(
                icon: Icons.movie, text: "Your movies", onTap: () {}),
            PlaylistBotton(
                icon: Icons.youtube_searched_for,
                text: "Get youtube premium",
                onTap: () {}),
            const Divider(
              color: Colors.grey,
            ),
            PlaylistBotton(
                icon: Icons.add_chart, text: "Time watched ", onTap: () {}),
            PlaylistBotton(
                icon: Icons.feedback, text: " Help and feedback", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
