import 'package:flutter/material.dart';

import '../sections/simplesteps.dart';
import '../sections/geolocation.dart';
import '../widget/flatbutton.dart';
import '../widget/icon_text.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask. Give. Locally'),
        actions: [
          Icon(Icons.file_download),
        ],
      ),
      body: Container(
        // color: Theme.of(context).primaryColor,
        color: Colors.white,
        child: Center(
          // widthFactor: 900,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  // Container(
                  //   height: 600,
                  //   width: double.infinity,
                  //   child: Image.asset(
                  //     'header.png',
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.network(
                      'https://www.flintneighborhoodsunited.org/wp-content/uploads/2017/01/neighborhood.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 1080,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.all(10),
                          height: 400,
                          width: double.infinity,
                          child: buildSimpleSteps(context),
                        ),
                        Container(
                          // color: Colors.green,
                          // padding: EdgeInsets.all(10),
                          width: double.infinity,
                          child: buildGeolocationSection(context),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 300,
                          // color: Colors.blue,
                          width: double.infinity,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(),
                                flex: 1,
                              ),
                              Expanded(
                                flex: 8,
                                child: Center(
                                  child: Text(
                                    'Millions of giving opportunity. No credit card needed.',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                              // Expanded(
                              //   flex: 8,
                              //   child: Image.asset(
                              //     'helping-others.png',
                              //     // fit: BoxFit.fill,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        buildAskButton(context, 'Get AskGiveLocally Free'),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 300,
                          // color: Colors.blue,
                          width: double.infinity,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(),
                                flex: 1,
                              ),
                              Expanded(
                                flex: 8,
                                child: Center(
                                  child: Text(
                                    'PEACE',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                              // Expanded(
                              //   flex: 8,
                              //   child: Image.asset(
                              //     'peace.jpg',
                              //     // fit: BoxFit.fill,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
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
                                    spacing: 100,
                                    runSpacing: 60,
                                    children: <Widget>[
                                      buildIconText(
                                          context, Icons.arrow_back, 'Arrow'),
                                      buildIconText(
                                          context, Icons.nature, 'Nature'),
                                      buildIconText(
                                          context, Icons.label, 'Label'),
                                      buildIconText(
                                          context, Icons.radio, 'Radio'),
                                      buildIconText(
                                          context, Icons.face, 'Face'),
                                      buildIconText(context, Icons.accessible,
                                          'Accessible'),
                                      buildIconText(
                                          context, Icons.ac_unit, 'ac unit'),
                                      buildIconText(
                                          context, Icons.access_time, 'Time'),
                                      buildIconText(
                                          context, Icons.verified_user, 'User'),
                                      buildIconText(
                                          context, Icons.radio, 'Radio'),
                                      buildIconText(
                                          context, Icons.face, 'Face'),
                                      buildIconText(context, Icons.accessible,
                                          'Accessible'),
                                      buildIconText(
                                          context, Icons.ac_unit, 'ac unit'),
                                      buildIconText(
                                          context, Icons.access_time, 'Time'),
                                      buildIconText(
                                          context, Icons.verified_user, 'User'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    // padding: EdgeInsets.all(18),
                    alignment: Alignment.bottomLeft,
                    height: 100,
                    width: double.infinity,
                    color: Theme.of(context).primaryColor,
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                            'Made by your neighbors in Austin, Texas.© Nextdoor 2020.'),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
