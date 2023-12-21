import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'routers.dart';

class NavigatorUtils {
  static Future push(BuildContext context, String path,
      {bool replace = false,
      bool clearStack = false,
      TransitionType? transition,
      Duration? transitionDuration,
      Map<String, dynamic>? params,
      bool? opaque,
      Object? arguments}) {
    return Routes.router.navigateTo(
      opaque: opaque,
      context,
      _getParamsPath(path, params),
      replace: replace,
      clearStack: clearStack,
      transition: transition ?? TransitionType.cupertino,
      transitionDuration: transitionDuration,
      routeSettings: RouteSettings(
        arguments: arguments,
      ),
    );
  }

  /// 返回
  static void pop(BuildContext context, {Object? result}) {
    Navigator.pop(context, result);
  }

  /// 返回到指定页面
  static void popUntil(BuildContext context, String path) {
    if (path.isEmpty) return;
    Navigator.popUntil(context, ModalRoute.withName(path));
  }

  /// 处理参数
  static String _getParamsPath(String path, Map<String, dynamic>? params) {
    if (params == null) {
      return path;
    }
    int index = 0;
    String query = "";
    for (var key in params.keys) {
      var value = "";
      if (params[key] is String) {
        value = Uri.encodeComponent(params[key]);
      } else {
        value = params[key].toString();
      }
      if (index == 0) {
        query = "?";
      } else {
        query = "$query&";
      }
      query += "$key=$value";
      index++;
    }
    path = path + query;
    return path;
  }

  ///收起软键盘
  static void unFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

Future<T?> navigateTo<T>(BuildContext context, Widget page) {
  return Navigator.of(context).push(
    PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        }),
  );
}
