import 'package:flutter/material.dart';

class AddVideoPage extends StatelessWidget {
  const AddVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
              )),
        ),
        const Center(
          child: Text("Add Video"),
        )
      ],
    );
  }
}
