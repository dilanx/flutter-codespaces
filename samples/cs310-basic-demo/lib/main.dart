import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';
import 'package:flutter_app/state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        // This is the big blue bar at the top.
        appBar: AppBar(
          title: const Text('Magical Image Retriever'),
        ),

        // This is the app body, including the state provider.
        // See app.dart to start writing code for the body.
        body: ChangeNotifierProvider(
          create: (context) => MyState(),
          child: const AppBody(),
        ),
      ),
    );
  }
}
