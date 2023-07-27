import 'dart:convert';
import 'dart:developer';

import 'package:news_api/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7e0654568afb4017afab7f5faf140cf4';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
            log(response.body.toString());
    if (jsonData['status'] == 'ok') {
      jsonData["article"].forEach(
        (element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['discription'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              // publishedAt: element["publishedAt"],
              content: element['element'],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}
