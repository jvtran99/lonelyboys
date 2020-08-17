import 'package:flutter/material.dart';

import 'dart:js' as js;

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    // color: Colors.amber,
    child: Text("Google Play"),
    onPressed: () {
      js.context.callMethod("open", [
        "https://play.google.com/store/apps/details?id=com.theexotech.askgivelocally&hl=en_US"
      ]);
    },
  );
  Widget continueButton = FlatButton(
    // color: Colors.amber,
    child: Text("Apple App Store"),
    onPressed: () {
      js.context.callMethod("open",
          ["https://apps.apple.com/us/app/ask-give-locally/id1522135123"]);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Click button below to download app."),
    content: Container(
      height: 50,
      child: Column(
        children: [
          // Text("Click button below to download app."),
          Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                cancelButton,
                continueButton,
              ]),
        ],
      ),
    ),
    // actions: [
    //   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    //     cancelButton,
    //     continueButton,
    //   ]),
    // ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
