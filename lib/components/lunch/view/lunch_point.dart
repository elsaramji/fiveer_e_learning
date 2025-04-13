import 'package:flutter/material.dart';

class FiveerLunchPoint extends StatelessWidget {
  const FiveerLunchPoint
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiveer Lunch Point',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fiveer Lunch Point'),
        ),
        body: const Center(
          child: Text('Welcome to Fiveer Lunch Point!'),
        ),
      ),
    );
  }
}