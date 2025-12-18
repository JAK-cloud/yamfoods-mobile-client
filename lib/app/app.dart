import 'package:flutter/material.dart';


/// Root widget of the application.
class YamFoodsApp extends StatelessWidget {
  const YamFoodsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
     // routerConfig: appRouter,
    );
  }
}
