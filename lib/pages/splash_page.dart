import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/constants.dart';
import 'package:flutter_youtube_ui/pages/dashboard_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // delay
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardPage()));
    });
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //youtube logo
          Center(
            child: Container(
              height: height * 0.20,
              width: width * 0.40,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(mainLogo))),
            ),
          ),
          //Text
          const Text(
            "YouTube",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          //progress indigator
          const CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
