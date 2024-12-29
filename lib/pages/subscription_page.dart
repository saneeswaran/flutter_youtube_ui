import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/subscription_page_video_model.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: height * 0.10,
                          width: width * 0.20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  }),
            ),
            const SubscriptionPageVideoModel()
          ],
        ),
      ),
    );
  }
}
