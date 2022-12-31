import 'package:beginners_circle/navigation_services.dart';
import 'package:beginners_circle/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationServices.navigatorKey,
      title: 'Master BuildContext',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: NavigationServices.onGenerateRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Services.showError('This is a dummy error message!'),
              child: const Text('Show Error Popup'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Services.showSuccess('This is a dummy success message!'),
              child: const Text('Show Success Popup'),
            ),
            ElevatedButton(
              onPressed: () =>
                  NavigationServices.navigatorState.pushNamed('/second'),
              child: const Text('Go to second page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Services.closeAndShowError('This is a dummy error message!'),
              child: const Text('Close & Show Error Popup'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Services.closeAndShowSuccess('This is a dummy success message!'),
              child: const Text('Close & Show Success Popup'),
            ),
          ],
        ),
      ),
    );
  }
}
