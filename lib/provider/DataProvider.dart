import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/NewsArticle.dart';
import 'package:flutter_application_2/services/ArticleServices.dart';

class Dataprovider with ChangeNotifier {
  late List<articles>? data;
  bool loading = false;
  Articleservices services = Articleservices();
  getArticelData(context) async {
    loading = true;
    data = await services.getdetails(context);
    loading = false;
    notifyListeners();
  }
}
