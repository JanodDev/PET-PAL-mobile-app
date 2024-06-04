import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:pet_pal/screen/authenticaton/home_screen.dart';
//import 'package:pet_pal/screen/authenticaton/login_screen.dart';
import 'package:pet_pal/screen/authenticaton/register_screen.dart';
import 'package:pet_pal/utils/colors.dart';
//import 'package:pet_pal/screen/authenticaton/veterinary.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: 'AIzaSyAm2okHhqGp8NuJELOC0qZCmOvmixJiZ20',
          appId: '1:831762376359:android:716fc84ff593e53931dd82',
          messagingSenderId: '831762376359',
          projectId: 'new-pet-pal',
        ))
      : await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      debugShowCheckedModeBanner: false,
      title: "pet pal",
      home: RegisterScreen(),
    );
  }
}
