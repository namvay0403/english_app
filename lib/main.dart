// import 'package:f2_flutter_ecommerce_app/packages/quote/quote.dart';
import 'package:english_app/packages/quotes/quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Quotes().getAll();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}
