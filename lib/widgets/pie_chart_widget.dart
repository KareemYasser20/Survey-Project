import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {

  final Map<String , dynamic > map;

  PieChartWidget({this.map});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: map,
      chartRadius: 220.0,
      legendOptions: LegendOptions(
        legendPosition: LegendPosition.right,
        legendTextStyle: TextStyle(
          fontSize: 8.0,

        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValuesInPercentage: true,
      ),
    );
  }
}