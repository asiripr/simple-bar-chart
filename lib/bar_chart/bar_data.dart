import 'package:simple_bar_chart/bar_chart/individual_bar.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thuAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sunAmount, 
    required this.monAmount, 
    required this.tueAmount, 
    required this.wedAmount, 
    required this.thuAmount, 
    required this.friAmount, 
    required this.satAmount});

   List<IndividualBar> barData = [];

   void initializedBarData(){
    IndividualBar(x: 0, y: sunAmount);
    IndividualBar(x: 0, y: monAmount);
    IndividualBar(x: 0, y: tueAmount);
    IndividualBar(x: 0, y: wedAmount);
    IndividualBar(x: 0, y: thuAmount);
    IndividualBar(x: 0, y: friAmount);
    IndividualBar(x: 0, y: satAmount);
   } 
}