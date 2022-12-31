import 'package:beginners_circle/navigation_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Services {
  static BuildContext get cntx => NavigationServices.currentContext;

  static void showError(String error) {
    showCupertinoDialog(
      context: cntx,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text(
            'Error',
            style: TextStyle(color: Colors.red),
          ),
          content: Text(error),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              isDestructiveAction: true,
              child: const Text(
                'ok',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => NavigationServices.navigatorState.pop(),
            ),
          ],
        );
      },
    );
  }

  static void showSuccess(String success) {
    showCupertinoDialog(
      context: cntx,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text(
            'Success',
            style: TextStyle(color: Colors.green),
          ),
          content: Text(success),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              isDestructiveAction: false,
              child: const Text(
                'ok',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => NavigationServices.navigatorState.pop(),
            ),
          ],
        );
      },
    );
  }

  static void closeAndShowError(String error) {
    NavigationServices.navigatorState.pop();
    showCupertinoDialog(
      context: cntx,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text(
            'Error',
            style: TextStyle(color: Colors.red),
          ),
          content: Text(error),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              isDestructiveAction: true,
              child: const Text(
                'ok',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => NavigationServices.navigatorState.pop(),
            ),
          ],
        );
      },
    );
  }

  static void closeAndShowSuccess(String success) {
    NavigationServices.navigatorState.pop();
    showCupertinoDialog(
      context: cntx,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text(
            'Error',
            style: TextStyle(color: Colors.green),
          ),
          content: Text(success),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              isDestructiveAction: false,
              child: const Text(
                'ok',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => NavigationServices.navigatorState.pop(),
            ),
          ],
        );
      },
    );
  }
}
