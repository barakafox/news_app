class ArticlesModel{
  List<dynamic> articles;
  String status;

  ArticlesModel({required this.articles , required this.status});

  factory ArticlesModel.fromjson(Map<String,dynamic> json){
       return ArticlesModel(articles: json['articles'], status: json['status']);
  }
}