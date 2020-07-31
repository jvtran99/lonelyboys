import 'package:flutter/material.dart';

Widget buildGeolocationSection(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 50,
      ),
      Expanded(
        flex: 8,
        child: Image.asset(
          'agl_hands.png',
          // fit: BoxFit.fill,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
            // color: Colors.pink,
            ),
      ),
      Expanded(
        flex: 6,
        child: Text(
          'Now more simple, secure, and faster than ever - with geolocation built-in.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
            // color: Colors.blue,
            ),
      ),
    ],
  );
}
