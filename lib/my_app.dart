import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routes/route_generator.dart';
import 'package:food_delivery_app/core/routes/routes.dart';
import 'package:food_delivery_app/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.home,
    );
  }
}
