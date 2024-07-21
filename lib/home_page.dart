import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<double> weeklySummary = [
    4.25,
    8.32,
    12.62,
    3.75,
    5.85,
    9.22,
    10.50
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}