import 'package:flutter/material.dart';
import 'package:simple_bar_chart/bar_chart/bar_graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<double> weeklySummary = [
    54.25,
    28.32,
    52.62,
    63.75,
    85.85,
    31.22,
    37.50
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: MyBarGraph(weeklySummary: weeklySummary,)
        ),
      ),
    );
  }
}