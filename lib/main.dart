// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saifalmirgab/provider/control.dart';
import 'package:saifalmirgab/views/viewpage/view_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Control(),
      child: MyApp(),
    ),
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ViewPage(),
      ),
    );
  }
}
