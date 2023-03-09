import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shivila_group/App/Splash/Controller/splash_controller.dart';
import 'package:shivila_group/App/Splash/View/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shivila Group',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const Splash(),
      ),
    );
  }
}
