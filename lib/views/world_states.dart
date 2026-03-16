import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({super.key});

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this
  )..repeat();

  void dispose(){

    super.dispose();
    _controller.dispose();

  }

  final colorList = <Color>[
    const Color(0xff4285F4),
    const Color(0xff1aa260),
    const Color(0xffde5246)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .01,),
            PieChart(
              dataMap: const{
                "Total": 20,
                "Recovered": 15,
                "Death": 5,
              },
              animationDuration: const Duration(milliseconds: 1200),
              chartRadius: MediaQuery.of(context).size.width / 3.2,
              legendOptions: const LegendOptions(
                legendPosition: LegendPosition.left,
              ),
              chartType: ChartType.ring,
              colorList: colorList,

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10 ),
              child: Card(
                child: Column(
                  children: [
                    ReuseableRow(title: "Total", value: "20"),
                    ReuseableRow(title: "Recovered", value: "15"),
                    ReuseableRow(title: "Death", value: "5"),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff1aa260),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Track Countries"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
class ReuseableRow extends StatelessWidget {
  String title, value;
  ReuseableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 5,left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          SizedBox(height: 5,),
          Divider(),
        ],
      ),
    );
  }
}


