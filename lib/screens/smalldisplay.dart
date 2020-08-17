import 'package:flutter/material.dart';

import '../widget/flatbutton.dart';
import '../widget/icon_text.dart';
import '../widget/download.dart';

Widget buildSmallDisplay(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          child: Stack(children: <Widget>[
            Container(
              height: 300,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/AdobeStock_296610026_village%20skyline_opt.png?alt=media&token=f91136ae-27b2-4ce4-9cae-c7feb6fb455c',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(top: 8),
                width: 600,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Get rid of your stuff and help out your neighbors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'bold',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Text(
            'Simple steps to get started'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                // Expanded(
                //   child: Container(),
                //   flex: 1,
                // ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
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
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 200,
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/asl_screens2.png?alt=media&token=8dea1d41-edbb-4ce2-b908-1fdd580296a5',
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),

            // Container(
            //   height: 200,
            //   child: Image.network(
            //     'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/asl_screens2.png?alt=media&token=8dea1d41-edbb-4ce2-b908-1fdd580296a5',
            //     // fit: BoxFit.fill,
            //   ),
            // ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text(
                  "Download Free",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                color: Theme.of(context).accentColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              ),
            ),

            // SizedBox(
            //   height: 18,
            // ),
          ],
        ),
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_hands.png?alt=media&token=8481ad89-98ac-4428-ba07-52231b7f61f2',
          // fit: BoxFit.fill,
        ),
        SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Now more simple, secure, and faster than ever - with geolocation built-in.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_donate.png?alt=media&token=29c4398d-cad7-4e6c-8395-ebc501d4fb73',
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 18),
          child: Text(
            'Millions of giving opportunity. No credit card needed.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        buildAskButton(context, 'Get AskGiveLocally Free'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 30,
                ),
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 30,
                    children: <Widget>[
                      buildIconText(context, Icons.arrow_back, 'Appliances'),
                      buildIconText(context, Icons.nature, 'Arts'),
                      buildIconText(context, Icons.label, 'Baby Stuff'),
                      buildIconText(context, Icons.radio, 'Books'),
                      buildIconText(context, Icons.face, 'Clothing'),
                      buildIconText(context, Icons.accessible, 'Furniture'),
                      buildIconText(context, Icons.ac_unit, 'Games'),
                      buildIconText(context, Icons.access_time, 'Gardening'),
                      buildIconText(context, Icons.verified_user, 'Home'),
                      buildIconText(context, Icons.radio, 'Movies'),
                      buildIconText(context, Icons.face, 'Pet Stuff'),
                      buildIconText(context, Icons.accessible, 'Toys'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          // padding: EdgeInsets.all(18),
          alignment: Alignment.bottomLeft,
          height: 70,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Row(children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 7,
              child: Text(
                'Made by your neighbors in Austin, Texas.© AskGiveLocally 2020.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ]),
        ),
      ],
    ),
  );
}
