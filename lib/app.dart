import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architechture/routes/pages.dart';
import 'package:getx_clean_architechture/routes/routes.dart';
import 'package:overlay_support/overlay_support.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: GetMaterialApp(
        title: 'Flutter Demo',
        navigatorObservers: [observer],
        getPages: CommonPage.pages,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: CommonRoutes.INIT,
      ),
    );
  }
}
