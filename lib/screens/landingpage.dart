import 'package:flutter/material.dart';

import '../sections/simplesteps.dart';
import '../sections/geolocation.dart';
import '../widget/flatbutton.dart';
import '../widget/icon_text.dart';
import '../screens/smalldisplay.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget _bigDisplay() {
    return Container(
      // color: Theme.of(context).primaryColor,
      color: Colors.white,
      child: Center(
        // widthFactor: 900,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Stack(children: <Widget>[
                    Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/AdobeStock_296610026_village%20skyline_opt.png?alt=media&token=f91136ae-27b2-4ce4-9cae-c7feb6fb455c',
                      // 'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_village_skyline_small.png?alt=media&token=65a05fe3-8cd5-472a-957c-094b1958cb72',
                      fit: BoxFit.fill,
                      // color: Colors.black26,
                      // colorBlendMode: BlendMode.softLight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(top: 80),
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
                Container(
                  width: 1080,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        // padding: EdgeInsets.all(10),
                        height: 400,
                        width: double.infinity,
                        child: buildSimpleSteps(context),
                      ),
                      Container(
                        width: double.infinity,
                        child: buildGeolocationSection(context),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 300,
                        width: double.infinity,
                        child: Row(
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
                            Expanded(
                              flex: 8,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_donate.png?alt=media&token=29c4398d-cad7-4e6c-8395-ebc501d4fb73',
                              ),
                            ),
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
                                    buildIconText(context, Icons.arrow_back,
                                        'Appliances'),
                                    buildIconText(
                                        context, Icons.nature, 'Arts'),
                                    buildIconText(
                                        context, Icons.label, 'Baby Stuff'),
                                    buildIconText(
                                        context, Icons.radio, 'Books'),
                                    buildIconText(
                                        context, Icons.face, 'Clothing'),
                                    buildIconText(
                                        context, Icons.accessible, 'Furniture'),
                                    buildIconText(
                                        context, Icons.ac_unit, 'Games'),
                                    buildIconText(context, Icons.access_time,
                                        'Gardening'),
                                    buildIconText(
                                        context, Icons.verified_user, 'Home'),
                                    buildIconText(
                                        context, Icons.radio, 'Movies'),
                                    buildIconText(
                                        context, Icons.face, 'Pet Stuff'),
                                    buildIconText(
                                        context, Icons.accessible, 'Shoes'),
                                    buildIconText(
                                        context, Icons.ac_unit, 'Toys'),
                                    buildIconText(
                                        context, Icons.access_time, 'Tools'),
                                    buildIconText(context, Icons.verified_user,
                                        'Any More'),
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
          ),
        ),
      ),
    );
  }

  Widget _smallDisplay() {
    return buildSmallDisplay(context);
  }

  // Widget _smallDisplay() {
  //   return Container(
  //     color: Colors.white,
  //     child: Center(
  //       child: SingleChildScrollView(
  //         child: Container(
  //           child: Column(
  //             children: [
  //               Container(
  //                 child: Stack(children: <Widget>[
  //                   Container(
  //                     height: 300,
  //                     child: Image.network(
  //                       'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/AdobeStock_296610026_village%20skyline_opt.png?alt=media&token=f91136ae-27b2-4ce4-9cae-c7feb6fb455c',
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   Align(
  //                     alignment: Alignment.center,
  //                     child: Container(
  //                       padding: EdgeInsets.only(top: 8),
  //                       width: 600,
  //                       alignment: Alignment.center,
  //                       child: Column(
  //                         children: [
  //                           Text(
  //                             'Get rid of your stuff and help out your neighbors',
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                               fontSize: 50.0,
  //                               fontFamily: 'bold',
  //                               fontWeight: FontWeight.bold,
  //                               color: Color.fromRGBO(255, 255, 255, 1),
  //                               shadows: <Shadow>[
  //                                 Shadow(
  //                                   offset: Offset(3.0, 3.0),
  //                                   blurRadius: 3.0,
  //                                   color: Color.fromARGB(255, 0, 0, 0),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ]),
  //               ),
  //               Container(
  //                 width: 1080,
  //                 child: Column(
  //                   children: [
  //                     Container(
  //                       margin: EdgeInsets.only(top: 10),
  //                       padding: EdgeInsets.all(10),
  //                       height: 400,
  //                       width: double.infinity,
  //                       child: buildSimpleSteps(context),
  //                     ),
  //                     Container(
  //                       width: double.infinity,
  //                       child: buildGeolocationSection(context),
  //                     ),
  //                     Container(
  //                       padding: EdgeInsets.all(10),
  //                       margin: EdgeInsets.symmetric(vertical: 10),
  //                       height: 300,
  //                       width: double.infinity,
  //                       child: Row(
  //                         children: [
  //                           Expanded(
  //                             child: Container(),
  //                             flex: 1,
  //                           ),
  //                           Expanded(
  //                             flex: 8,
  //                             child: Center(
  //                               child: Text(
  //                                 'Millions of giving opportunity. No credit card needed.',
  //                                 style: TextStyle(fontSize: 22),
  //                               ),
  //                             ),
  //                           ),
  //                           Expanded(
  //                             flex: 8,
  //                             child: Image.network(
  //                               'https://firebasestorage.googleapis.com/v0/b/lonelyboys-1767f.appspot.com/o/agl_donate.png?alt=media&token=29c4398d-cad7-4e6c-8395-ebc501d4fb73',
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 30,
  //                     ),
  //                     buildAskButton(context, 'Get AskGiveLocally Free'),
  //                     SizedBox(
  //                       height: 70,
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Expanded(
  //                           flex: 7,
  //                           child: Container(
  //                             margin: EdgeInsets.only(top: 10),
  //                             padding: EdgeInsets.symmetric(
  //                               vertical: 18,
  //                               horizontal: 30,
  //                             ),
  //                             child: Align(
  //                               alignment: AlignmentDirectional.topCenter,
  //                               child: Wrap(
  //                                 spacing: 40,
  //                                 runSpacing: 30,
  //                                 children: <Widget>[
  //                                   buildIconText(
  //                                       context, Icons.arrow_back, 'Arrow'),
  //                                   buildIconText(
  //                                       context, Icons.nature, 'Nature'),
  //                                   buildIconText(
  //                                       context, Icons.label, 'Label'),
  //                                   buildIconText(
  //                                       context, Icons.radio, 'Radio'),
  //                                   buildIconText(context, Icons.face, 'Face'),
  //                                   buildIconText(context, Icons.accessible,
  //                                       'Accessible'),
  //                                   buildIconText(
  //                                       context, Icons.ac_unit, 'ac unit'),
  //                                   buildIconText(
  //                                       context, Icons.access_time, 'Time'),
  //                                   buildIconText(
  //                                       context, Icons.verified_user, 'User'),
  //                                   buildIconText(
  //                                       context, Icons.radio, 'Radio'),
  //                                   buildIconText(context, Icons.face, 'Face'),
  //                                   buildIconText(context, Icons.accessible,
  //                                       'Accessible'),
  //                                   buildIconText(
  //                                       context, Icons.ac_unit, 'ac unit'),
  //                                   buildIconText(
  //                                       context, Icons.access_time, 'Time'),
  //                                   buildIconText(
  //                                       context, Icons.verified_user, 'User'),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 30,
  //               ),
  //               Container(
  //                 // padding: EdgeInsets.all(18),
  //                 alignment: Alignment.bottomLeft,
  //                 height: 100,
  //                 width: double.infinity,
  //                 color: Theme.of(context).primaryColor,
  //                 child: Row(children: [
  //                   Expanded(
  //                     flex: 1,
  //                     child: Container(),
  //                   ),
  //                   Expanded(
  //                     flex: 6,
  //                     child: Text(
  //                       'Made by your neighbors in Austin, Texas.© AskGiveLocally 2020.',
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                       ),
  //                     ),
  //                   ),
  //                   Expanded(
  //                     flex: 1,
  //                     child: Container(),
  //                   ),
  //                 ]),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ask Give Locally'),
        actions: [
          Icon(Icons.file_download),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _bigDisplay();
        } else {
          return _smallDisplay();
        }
      }),
    );
  }
}
