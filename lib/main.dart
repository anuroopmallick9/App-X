import 'package:flutter/material.dart';
import 'package:myapp/Responsive/DesktopLayout.dart';
import 'package:myapp/Responsive/MobileLayout.dart';
import 'package:myapp/Responsive/TabletLayout.dart';
import 'package:myapp/Responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
