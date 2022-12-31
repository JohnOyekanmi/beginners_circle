import 'package:beginners_circle/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Handles complex Route navigation.
class NavigationServices {
  /// Returns the singleton navigator key stored in this class.
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// Returns the current context in the Widget tree.
  static BuildContext get currentContext => navigatorKey.currentContext!;

  /// Returns the current context in the Widget tree.
  static OverlayState get overlayState => navigatorKey.currentState!.overlay!;

  /// Returns the navigator state.
  static NavigatorState get navigatorState => navigatorKey.currentState!;

  static Route<T> platformRoute<T>(
    WidgetBuilder builder, {
    String? title,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      return CupertinoPageRoute<T>(
        builder: builder,
        title: title,
        settings: settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
    } else {
      return MaterialPageRoute<T>(
        builder: builder,
        settings: settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
    }
  }

  static Route<T> onGenerateRoute<T extends dynamic>(RouteSettings settings) {
    switch (settings.name) {
      case '/second':
        return platformRoute<T>((context) {
          return const SecondPage();
        });
      case '/':
      default:
        return platformRoute<T>((context) {
          return const HomePage();
        });
    }
  }
}
