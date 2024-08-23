// ignore_for_file: prefer_const_constructors

import 'package:disaster_hackathon_app/pages/hotline.dart';
import 'package:disaster_hackathon_app/pages/login_page.dart';
import 'package:disaster_hackathon_app/pages/prepare_page.dart';
import 'package:disaster_hackathon_app/pages/signup_page.dart';
import 'package:disaster_hackathon_app/pages/track_resource.dart';
import 'package:flutter/material.dart';
import 'package:disaster_hackathon_app/pages/most_requested_resource.dart';
import 'package:disaster_hackathon_app/pages/notification.dart';
import 'package:disaster_hackathon_app/pages/ongoing_disaster.dart';
import 'package:disaster_hackathon_app/pages/profile.dart';
import 'package:disaster_hackathon_app/pages/home_page.dart';
import 'package:disaster_hackathon_app/pages/seek_resource.dart';
import 'package:disaster_hackathon_app/pages/send_resource.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xFF215283),
        scaffoldBackgroundColor: Colors.blue.shade100,
        // hintColor: Colors.white,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/sendresource': (context) => SendResourcePage(),
        '/seekresource': (context) => SeekResourcePage(),
        '/notification': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/mostrequestedresource': (context) => MostRequestedResourcesPage(),
        '/ongoingdisaster': (context) => OngoingDisasterPage(),
        '/trackresource': (context) => TrackResourcePage(),
        '/hotline': (context) => HotlinePage(),
        '/prepare': (context) => PreparePage(),
      },
    );
  }
}
