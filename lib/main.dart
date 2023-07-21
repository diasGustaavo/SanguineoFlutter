import 'package:flutter/material.dart';
import 'feedView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sanguineo',
      theme: ThemeData(
        // Specify a new color scheme.
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color.fromARGB(255, 183, 58, 58),
          secondary: Colors.blue, // Set accent color here
        ),
        useMaterial3: true,
      ),
      home: FeedView(),
    );
  }
}
