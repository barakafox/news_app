import 'package:flutter/material.dart';
import 'package:news_app/Models/articles_model.dart';
import 'package:news_app/Services/articles_service.dart';

class ArticlesProvider extends ChangeNotifier{
  ArticlesModel? articlesModel;

  Future<void> fetchget() async{
   articlesModel = await ArticlesService.getArticles();
   notifyListeners();
  }
}