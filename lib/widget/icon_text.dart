import 'package:flutter/material.dart';

Widget buildIconText(BuildContext context, IconData icon, String text) {
  return Column(
    children: [
      Icon(
        icon,
        size: 60,
      ),
      Text(text)
    ],
  );
}
