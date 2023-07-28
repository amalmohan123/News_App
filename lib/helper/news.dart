import 'dart:convert';

import 'package:news_api/models/article_model.dart';
import 'package:http/http.dart' as http;
class News {
  List<ArticleModel> news = []; 

  Future<void> getNews() async {
    String url ='https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=7e0654568afb4017afab7f5faf140cf4';
  
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        if (jsonData['status'] == "ok") {
          jsonData["articles"].forEach((element) {
            if (element['title'] != null &&
                element['author'] != null &&
                element['description'] != null &&
                element['url'] != null &&
                element['urlToImage'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                title: element['title'],
                author: element['author'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                // publishedAt: element['publishedAt'],
                content: element['content'],
              );
              news.add(articleModel);
            }
          });
        }
      }
    
}
}