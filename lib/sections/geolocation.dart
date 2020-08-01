import 'package:flutter/material.dart';

Widget buildGeolocationSection(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 50,
      ),
      Expanded(
        flex: 8,
        child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_hands.png?alt=media&token=8481ad89-98ac-4428-ba07-52231b7f61f2',
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
