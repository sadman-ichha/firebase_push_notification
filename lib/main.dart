import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_push_notification/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'views/recommended_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'push notification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        'recommended': (context) => RecommendedScreen(),
      },
    );
  }
}
