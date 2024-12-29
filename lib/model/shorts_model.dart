import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/constants.dart';

class ShortsModel extends StatelessWidget {
  const ShortsModel({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: height * 0.80,
      width: width * 1,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          //shorts and shorts title
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
                width: width * 0.10,
                child: Image.asset(mainLogo),
              ),
              const Text(
                "  Shorts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              //shorts continer
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          customShortsScroll(height, width),
          customShortsScroll(height, width)
        ],
      ),
    );
  }

  SingleChildScrollView customShortsScroll(double height, double width) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: height * 0.35,
            width: width * 1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 10),
                    height: height * 0.35,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-1, 1),
                              blurRadius: 1),
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, -1),
                              blurRadius: 1),
                        ]),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "video title",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
