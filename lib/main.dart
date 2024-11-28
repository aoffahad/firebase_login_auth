import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login_auth/presentation/screen/login_screen.dart';
import 'package:firebase_login_auth/presentation/screen/widget_tree.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetTree(),
    );
  }
}
