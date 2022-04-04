import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Push {
  static const PageTransitionType _defaultTransition = PageTransitionType.fade;
  static Future<T?> to<T extends Object?>(Widget page, BuildContext context,
      {PageTransitionType transitionType = _defaultTransition}) {
    return Navigator.push(
      context,
      PageTransition(type: transitionType, child: page),
    );
  }

  static Future<T?> toNamed<T extends Object?>(String routeName, BuildContext context, {Object? arguments}) {
    return Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> off<T extends Object?, TO extends Object?>(Widget page, BuildContext context,
      {TO? result, PageTransitionType transitionType = _defaultTransition}) {
    return Navigator.pushReplacement(
      context,
      PageTransition(type: transitionType, child: page),
      result: result,
    );
  }

  static Future<T?> offNamed<T extends Object?, TO extends Object?>(String routeName, BuildContext context,
      {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> offAll<T extends Object?>(Widget page, BuildContext context,
      {bool Function(Route<dynamic>)? predicate, PageTransitionType transitionType = _defaultTransition}) {
    return Navigator.pushAndRemoveUntil(
      context,
      PageTransition(type: transitionType, child: page),
      predicate ?? (route) => false,
    );
  }

  static Future<T?> offAllNamed<T extends Object?>(String routeName, BuildContext context,
      {bool Function(Route<dynamic>)? predicate, Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      predicate ?? (route) => false,
      arguments: arguments,
    );
  }
}
