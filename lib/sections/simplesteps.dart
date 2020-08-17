import 'package:flutter/material.dart';

import '../widget/download.dart';

Widget buildSimpleSteps(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 4,
          child: Column(
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
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 400) {
                  return FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Text(
                      "Download Free",
                      style: TextStyle(fontSize: 18),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  );
                } else {
                  return FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Text("Download Free"),
                    color: Theme.of(context).accentColor,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  );
                }
              })
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/asl_screens2.png?alt=media&token=8dea1d41-edbb-4ce2-b908-1fdd580296a5',
            // fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}
