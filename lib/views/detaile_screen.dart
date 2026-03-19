

import 'package:covid19_app/views/world_states.dart';
import 'package:flutter/material.dart';

class DetaileScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,totalDeaths,totalRecovered,active,critical,todayRecovered,test;


   DetaileScreen({
    required this.image,
     required this.name,
     required this.totalCases,
     required this.totalDeaths,
     required this.todayRecovered,
     required this.active,
     required this.critical,
     required this.totalRecovered,
     required this.test,
});

  @override
  State<DetaileScreen> createState() => _DetaileScreenState();
}

class _DetaileScreenState extends State<DetaileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * .06,),
                      ReuseableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReuseableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReuseableRow(title: 'Death', value: widget.totalDeaths.toString()),
                      ReuseableRow(title: 'Active', value: widget.active.toString()),
                      ReuseableRow(title: 'Critical', value: widget.critical.toString()),

                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                  backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
