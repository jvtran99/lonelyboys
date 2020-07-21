import 'package:flutter/material.dart';

Widget buildGeolocationSection(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 50,
      ),
      // Expanded(
      //   flex: 5,
      //   child: Image.asset(
      //     'hands-with-phones.png',
      //     // fit: BoxFit.fill,
      //   ),
      // ),
      Expanded(
        flex: 2,
        child: Container(
            // color: Colors.pink,
            ),
      ),
      Expanded(
        flex: 8,
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
