import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home.dart';
import 'pages/user_profile.dart';
import 'pages/marketplace.dart';
import 'pages/product_preview.dart';
import 'pages/chat_interface.dart';


void main() {
  runApp( App());
}

class CampusMarketplaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => UserProfilePage(),
        '/marketplace': (context) => MarketplacePage(),
        '/product': (context) => ProductPage(),
        '/chat': (context) => ChatPage(),
        
      },
    );
  }
}
