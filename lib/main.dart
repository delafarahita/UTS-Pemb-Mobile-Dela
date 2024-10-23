import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Impor halaman splash

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Aja, Dela',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Halaman pertama saat aplikasi dijalankan
    );
  }
}
