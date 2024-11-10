import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Providers/articles_provider.dart';
import 'package:news_app/Widget/custom_articles.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ArticlesProvider>(
      builder: (context, objectProvider, child) {
        var objectModel = objectProvider.articlesModel;
        if(objectModel == null)
          {
            objectProvider.fetchget();
            return CircularProgressIndicator();
          }else{
          return ListView.builder(
              itemBuilder: (context, index) =>
              CustomArticles(
                image: objectModel.articles[index]['urlToImage'],
                title: objectModel.articles[index]['title'],
                description: objectModel.articles[index]['description'],
              ),
             itemCount: 10,
          );
        }
      },
      ),
    );
  }
}
