import 'package:flutter/material.dart';
import 'package:hw_navigation/features/main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainNavigationScreen(),
    );
  }
}
