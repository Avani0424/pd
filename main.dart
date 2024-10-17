import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'package:pd/createarticle.dart';
import 'package:pd/detailedarticle.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:pd/draftarticle.dart';
import 'package:pd/mainfeed.dart';
import 'package:pd/newcreatearticle.dart';
import 'package:pd/notfound.dart';
import 'package:pd/select_screen.dart';
import 'package:pd/successarticle.dart';
import 'package:pd/viewarticle.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Nunito')),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: SelectScreen());
  }
}
