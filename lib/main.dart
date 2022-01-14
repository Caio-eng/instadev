import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instadev/responsive/mobile_screen_layout.dart';
import 'package:instadev/responsive/reponsive_layout_screen.dart';
import 'package:instadev/responsive/web_screen_layout.dart';
import 'package:instadev/screens/login_screen.dart';
import 'package:instadev/utils/colors.dat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'IzaSyD1z8WSMmEss9PHSvke5NdbZm2nE-uLkYM',
          appId: '1:945346799167:web:1c11e08f40c4f8999a3a8a',
          messagingSenderId: '945346799167',
          projectId: 'instadev-6c9e2',
          storageBucket: 'instadev-6c9e2.appspot.com'
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: ResponiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}

