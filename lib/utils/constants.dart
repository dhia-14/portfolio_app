import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF4361EE);
  static const Color secondary = Color(0xFF7209B7);
  static const Color accent = Color(0xFF4CC9F0);
  static const Color light = Color(0xFFF8F9FA);
  static const Color dark = Color(0xFF212529);
}

class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.black54,
    height: 1.6,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );
}

class PortfolioInfo {
  static const String name = 'Your Name';
  static const String title = 'Your Title';
  static const String bio = 'Your bio goes here...';
  static const String email = 'your.email@example.com';
  static const String location = 'Your City, Country';
  static const String phone = '+1234567890';
}

class AppSettings {
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 12.0;
}