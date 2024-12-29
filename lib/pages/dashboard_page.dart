import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/pages/add_video_page.dart';
import 'package:flutter_youtube_ui/pages/home_page.dart';
import 'package:flutter_youtube_ui/pages/library_page.dart';
import 'package:flutter_youtube_ui/pages/shorts_page.dart';
import 'package:flutter_youtube_ui/pages/subscription_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 4;
  List pages = [
    const HomePage(),
    const ShortsPage(),
    const AddVideoPage(),
    const SubscriptionPage(),
    const LibraryPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (currentIndex == 0 || currentIndex == 3)
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              //appbar youtube logo
              // leading: Container(
              //   margin: const EdgeInsets.only(left: 10),
              //   decoration: BoxDecoration(
              //       image: DecorationImage(image: AssetImage(mainLogo))),
              // ),
              // //title
              // title: const Text(
              //   "YouTube",
              //   style: TextStyle(
              //       wordSpacing: 0.1,
              //       fontSize: 28,
              //       fontWeight: FontWeight.bold),
              // ),
              title: Image.asset(
                'assets/appbar_logo.jpg',
                height: 80,
                width: 120,
                fit: BoxFit.fill,
              ),
              //action buttons

              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cast),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
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
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
                label: "Shorts"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions,
                  color: Colors.black,
                ),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: Colors.black,
                ),
                label: "Library")
          ]),
      body: pages[currentIndex],
    );
  }
}
