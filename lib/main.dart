import 'package:flutter/material.dart';
import 'package:spotify_app/core/theme/theme.dart';
import 'package:spotify_app/features/auth/view/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage()
    );
  }
}

