import 'package:dio/dio.dart';
import 'package:news_app/Models/articles_model.dart';

class ArticlesService{
 static Dio dio = Dio();

 static Future<ArticlesModel> getArticles() async{
   try{
     Response response = await dio.get('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=9abe079828714ef49f378f36c4fb89e2');
     if(response.statusCode == 200)
       {
         return ArticlesModel.fromjson(response.data);
       }else{
       throw Exception('Not Successfully');
     }
   }catch(e){
     throw Exception('Error : $e');
   }

 }
}