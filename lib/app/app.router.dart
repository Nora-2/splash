// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String homeView = '/home-view';
  static const String categoryView = '/category-view';
  static const String shoppingCartView = '/shopping-cart-view';
  static const String checkoutView = '/checkout-view';
  static const String orderSuccessView = '/order-success-view';
  static const all = <String>{
    splashView,
    loginView,
    signupView,
    homeView,
    categoryView,
    shoppingCartView,
    checkoutView,
    orderSuccessView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: splash),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const splash(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CategoryView arguments holder class
class CategoryViewArguments {
  final Key? key;
  final int id;
  final String title;
  CategoryViewArguments({this.key, required this.id, required this.title});
}

/// OrderSuccessView arguments holder class
class OrderSuccessViewArguments {
  final Key? key;
  final int id;
  OrderSuccessViewArguments({this.key, required this.id});
}
