import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Constants/constants.dart';
import 'package:myapp/Utils/my_box.dart';
import 'package:myapp/Utils/my_tile.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        return MyBox(
                          childWidget: PieChart(
                            PieChartData(),
                            swapAnimationCurve: Curves.linear,
                            swapAnimationDuration: const Duration(
                              seconds: 2,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
