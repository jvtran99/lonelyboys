import 'package:flutter/material.dart';

Widget buildAskButton(BuildContext context, String text) {
  return FlatButton(
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
    onPressed: () {},
    // child: Text('Get AskGiveLocally Free'),
    child: Text(text),
    color: Theme.of(context).accentColor,
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20.0)),
  );
}
