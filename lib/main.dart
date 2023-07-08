import 'package:flutter/material.dart';
import 'view/landing_page.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    home: LandingPage(),
  ));
}
