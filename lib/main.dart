import 'package:flutter/material.dart';

import 'feature/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(useMaterial3: true), title: 'Material App', home: const LoginViewDemo());
  }
}
