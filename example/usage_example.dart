// مثال: استخدام خطوط المكتبة في تطبيق Flutter
// ضع هذا الملف في مشروعك بعد إضافة الخطوط في pubspec.yaml
// (راجع example/pubspec_snippet.yaml)

import 'package:flutter/material.dart';

void main() {
  runApp(const FontsDemoApp());
}

class FontsDemoApp extends StatelessWidget {
  const FontsDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // خط افتراضي لكل التطبيق (عربي — القاهرة)
      theme: ThemeData(fontFamily: 'Cairo'),
      home: const FontsDemoPage(),
    );
  }
}

class FontsDemoPage extends StatelessWidget {
  const FontsDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مكتبة الخطوط')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // خط القاهرة — عريض
            Text(
              'مرحباً بك في فلاتر',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold, // 700
                fontSize: 24,
              ),
            ),
            SizedBox(height: 12),
            // خط القاهرة — خفيف
            Text(
              'هذا نص بخط القاهرة الخفيف',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            // خط تجوّل — متوسط
            Text(
              'وهذا نص بخط تجوّل',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            // خط إنجليزي — Poppins
            Text(
              'Hello, Flutter Fonts!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            // خط أميري — للعناوين الكلاسيكية
            Text(
              'بسم الله الرحمن الرحيم',
              style: TextStyle(
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
