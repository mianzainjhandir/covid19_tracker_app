

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
    return const Placeholder();
  }
}
