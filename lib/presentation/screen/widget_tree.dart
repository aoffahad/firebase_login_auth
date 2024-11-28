import 'package:firebase_login_auth/presentation/screen/home_page.dart';
import 'package:firebase_login_auth/presentation/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';

import 'auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return const LoginScreen();
          }
        });
  }
}
