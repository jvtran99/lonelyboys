import 'package:flutter/material.dart';

import '../widget/flatbutton.dart';

Widget buildSimpleSteps(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 4,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simple steps to get started'.toUpperCase(),
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Provide Location",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Post Unwanted Items",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Give",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Feel Good",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildAskButton(
              context,
              'Download Free!',
            )
          ],
        ),
      ),
      Expanded(
        flex: 4,
        child: Image.asset(
          'asl_screens2.PNG',
          // fit: BoxFit.fill,
        ),
      ),
    ],
  );
}
