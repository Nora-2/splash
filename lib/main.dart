
import 'package:big_cart/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.router.dart';

void main() {
  // setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(AssetConstants.splashScreenBackground), context);
    return MaterialApp(
      title: 'Big Cart',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      // home: CheckoutView(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
