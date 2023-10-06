import 'package:aplikasi/about_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
import 'splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAbc-PZsAK1Tma1lKyQnoywikw4W7dbDdc",
        appId: "1:984201562658:android:676d1581411ce10d8c987b",
        messagingSenderId: "984201562658",
        projectId: "template-061023",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pembuatan CRUD APP',
      routes: {
        '/': (context) => SplashScreen(
              child: HomeScreen(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomeScreen(),
        '/tentang': (context) => AboutPage(),
      },
    );
  }
}
