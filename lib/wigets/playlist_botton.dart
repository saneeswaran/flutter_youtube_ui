// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PlaylistBotton extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback onTap;
  PlaylistBotton(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        // ignore: unnecessary_brace_in_string_interps
        "    ${text}",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      onTap: onTap,
    );
  }
}
