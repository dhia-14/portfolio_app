import 'package:flutter/material.dart';
import '../utils/constants.dart';

// Colors
class AppColors {
  static const Color primary = Color(0xFF4361EE);
  static const Color secondary = Color(0xFF7209B7);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color danger = Color(0xFFF44336);
  static const Color light = Color(0xFFF8F9FA);
  static const Color background = Color(0xFFE2D0FF);
  static const Color dark = Color(0xFF212529);
}

// Text Styles
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

// Personal Information
class PortfolioInfo {
  static const String name = 'Dhia Eddine Ajroudi';
  static const String title = 'Flutter Developer';
  static const String bio = 'Passionate mobile developer creating beautiful apps with Flutter.';
  static const String email = 'ajroudidhiaeddine@gmail.com';
  static const String location = 'Houmet el souk, Djerba';
  static const String phone = '+216 53 627 409';
}

// App Settings
class AppSettings {
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 12.0;
}
class AppGradients {
  static const Gradient primary = LinearGradient(
    colors: [Color(0xFF4361EE), Color(0xFF3A0CA3)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient secondary = LinearGradient(
    colors: [Color(0xFFF72585), Color(0xFFB5179E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}