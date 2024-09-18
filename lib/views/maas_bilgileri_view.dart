import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MaasBilgileriView extends StatelessWidget {
  const MaasBilgileriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dönemsel Maaş Bilgileri"),
      ),
      body: Column(
        children: [
          const Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dönemsel Maaş Bilgisi - Haziran 3035"),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.directions_walk_sharp,
                          size: 70,
                        )),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 3, child: Text("Devamlılık Primi")),
                              Text(
                                "-",
                                textAlign: TextAlign.end,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "783,00TL",
                                    textAlign: TextAlign.end,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 3, child: Text("Devamlılık Primi")),
                              Text(
                                "-",
                                textAlign: TextAlign.end,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "783,00TL",
                                    textAlign: TextAlign.end,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 3, child: Text("Devamlılık Primi")),
                              Text(
                                "-",
                                textAlign: TextAlign.end,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "783,00TL",
                                    textAlign: TextAlign.end,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(flex: 3, child: Text("Primi")),
                              Text(
                                "-",
                                textAlign: TextAlign.end,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "783,00TL",
                                    textAlign: TextAlign.end,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(flex: 3, child: Text("Devamlılık")),
                              Text(
                                "-",
                                textAlign: TextAlign.end,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "783,00TL",
                                    textAlign: TextAlign.end,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 2,
              minY: 0,
              maxY: 35000,
              lineBarsData: [
                LineChartBarData(
                  belowBarData: BarAreaData(show: true),
                  spots: [
                    const FlSpot(0, 3000),
                    const FlSpot(1, 7000),
                    const FlSpot(2, 31000),
                  ],
                ),
              ],
              titlesData: FlTitlesData(
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        final titles = ['Tem - 22', 'Tem - 23', 'Haz - 24'];
                        return Text(titles[value.toInt()],
                            style: const TextStyle(fontSize: 12));
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                      axisNameWidget: Text("Tutar"),
                      sideTitles:
                          SideTitles(showTitles: true, reservedSize: 50))),
              gridData: const FlGridData(show: true),
            ),
          ))
        ],
      ),
    );
  }
}
