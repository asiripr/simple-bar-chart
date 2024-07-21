import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:simple_bar_chart/bar_chart/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0], 
      monAmount: weeklySummary[1], 
      tueAmount: weeklySummary[2], 
      wedAmount: weeklySummary[3], 
      thuAmount: weeklySummary[4], 
      friAmount: weeklySummary[5], 
      satAmount: weeklySummary[6]
    );
    myBarData.initializedBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles))
        ),
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
          x: data.x,
          barRods: [
            BarChartRodData(
              toY: data.y, 
              color: Colors.blue.shade500,
              width: 20,
              borderRadius: BorderRadius.circular(5)
            )
          ]
          ),).toList()
      )
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.black,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('S', style: style,);
      break;
    case 1:
      text = const Text('M', style: style,);
      break;
    case 2:
      text = const Text('T', style: style,);
      break;
    case 3:
      text = const Text('W', style: style,);
      break;
    case 4:
      text = const Text('T', style: style,);
      break;
    case 5:
      text = const Text('F', style: style,);
      break;
    case 6:
      text = const Text('S', style: style,);
      break;
    default:
      text = const Text('S', style: style,);
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}