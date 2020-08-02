import 'package:flutter/material.dart';

Widget buildAskButton(BuildContext context, String text) {
  return FlatButton(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    onPressed: () {},
    child: Text(text),
    color: Theme.of(context).accentColor,
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20.0)),
  );
}
