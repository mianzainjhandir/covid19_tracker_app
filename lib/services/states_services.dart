
import 'dart:convert';

import 'package:covid19_app/model/WorldStatesModel.dart';
import 'package:covid19_app/services/utilities/app_url.dart';
import 'package:http/http.dart' as http;

class StateServices{
  Future<WorldStatesModel> fetchWorldStatesRecords() async{
    final response = await http.get(Uri.parse(AppUrl.worldStateApi));


    if(response.statusCode == 200){

      var data = jsonDecode(response.body.toString());
      return WorldStatesModel.fromJson(data); // ✅ FIXED

    }else{
      throw Exception('Error');
    }
  }


  Future<List<dynamic>> countriesListApi() async{
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));


    if(response.statusCode == 200){

      var data = jsonDecode(response.body.toString());
      return data;// ✅ FIXED

    }else{
      throw Exception('Error');
    }
  }
}