import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task/app/app.locator.dart';
import 'package:task/app/app.router.dart';

void main() async {
  runApp(const MyApp());
  setupLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
