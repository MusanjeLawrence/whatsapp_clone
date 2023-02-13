import 'package:flutter/material.dart';
import 'package:my_whatsapp/Screens/mobile_screen_layout.dart';
import 'package:my_whatsapp/Screens/web_screen_layout.dart';
import 'package:my_whatsapp/colors.dart';
import 'package:my_whatsapp/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp clone',
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(),
       webScreenLayout: WebScreenLayout()
       ),
    );
  }
}