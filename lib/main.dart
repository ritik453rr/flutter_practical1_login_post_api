import 'package:flutter/material.dart';
import 'package:login_system_api/login_screen.dart';
import 'package:login_system_api/login_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginController())
      ],
      child: const MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}
