import 'package:flutter/material.dart';

import '../constants.dart';

class SubscriptionPageVideoModel extends StatelessWidget {
  const SubscriptionPageVideoModel({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //profile
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: const Text("Video title"),
                subtitle: const Text("Published time"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ),
              //video link
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("   Video link"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("   video description"),
              ),
              Container(
                height: height * 0.30,
                width: width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.contain)),
              )
            ],
          );
        });
  }
}
