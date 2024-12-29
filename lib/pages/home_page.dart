import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/model/shorts_model.dart';
import 'package:flutter_youtube_ui/model/video_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffececec),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       ToggleButtons(
            //         borderRadius: BorderRadius.circular(30),
            //         selectedColor: Colors.white,
            //         fillColor: Colors.black,
            //         color: Colors.grey,
            //         selectedBorderColor: Colors.black,
            //         borderColor: Colors.grey,
            //         borderWidth: 1,
            //         isSelected: isSelected,
            //         onPressed: (index) {
            //           setState(() {
            //             for (int i = 0; i < isSelected.length; i++) {
            //               isSelected[i] = i == index;
            //             }
            //           });
            //         },
            //         children: const [
            //           Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 16.0),
            //             child: Text('All'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 16.0),
            //             child: Text('Mixes'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 16.0),
            //             child: Text('Music'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 16.0),
            //             child: Text('Graphic'),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
            //
            //

            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const VideoModel(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const ShortsModel(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const VideoModel(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const ShortsModel()
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
