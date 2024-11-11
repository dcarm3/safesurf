import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/activity_provider.dart';
import './screens/home_screen.dart';

void main() {
  runApp(SafeSurfApp());
}

class SafeSurfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ActivityProvider()),
      ],
      child: MaterialApp(
        title: 'SafeSurf',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
      ),
    );
  }
}
