import 'dart:convert';

import 'package:flutter_application_2/model/NewsArticle.dart';
import 'package:http/http.dart'as http;
class Articleservices{
List<articles> items=[];

  Future<List<articles>?>getdetails(context)async{
    final url= "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=00695f831db34ab88185e1626db3377a";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
   
      final jsonResponse = jsonDecode(response.body);
      if(jsonResponse.containsKey('articles')){
        
        final jsonArray = jsonResponse["articles"] as List<dynamic>;
       
        items = jsonArray.map((itemJson) => articles.fromJson(itemJson)).toList();
         
        print(items);
        return items;
      }

    }
    return null;

    
  }
}