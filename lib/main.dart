// import 'dart:ffi';

import 'package:delevary_app/authentication/signup_screen.dart';
import 'package:delevary_app/firebase_options.dart';
import 'package:delevary_app/splashScreen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'mainScreens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyAu7OWfMz_58RajKSE5LsGqZewlGwvuMvM", // Your apiKey
      appId: "1:458643525972:android:e6e8abdbbb7637cd0f38c1", // Your appId
      messagingSenderId: "XXX", // Your messagingSenderId
      projectId: "my-dirver-app", // Your projectId
    ),
  );
  runApp(MyApp(
    child: MaterialApp(
      title: 'Drivers App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child;

  MyApp({required this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
