import 'package:flutter/material.dart';
import 'package:kualitas_udara/appProvider/app_provider.dart';
import 'package:kualitas_udara/screens/opening_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<AppProvider>(create:
      (context) => AppProvider()
      )
    ],
        child:  MaterialApp(
          title: 'Monitor Kualitas Air',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const OpeningScreen(),
        )
    );
  }
}