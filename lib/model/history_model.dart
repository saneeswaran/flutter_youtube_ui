import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/constants.dart';

class HistoryModel extends StatelessWidget {
  const HistoryModel({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          height: height * 0.20,
          width: width * 1,
          child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(12),
                  height: height * 0.10,
                  width: width * 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover)),
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "2:47",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
