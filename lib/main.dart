import 'package:flutter/material.dart';
import 'package:news_api/core/constance.dart';
import 'package:news_api/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPersistentFrameCallback()
    return MaterialApp(
      title: 'News_api',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: whiteColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
