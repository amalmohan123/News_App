import 'dart:core';

class ArticleModel {
String author;
 String title;
   String? description;
  late String url;
  late String urlToImage;
  late String content;
  // late DateTime publishedAt;

ArticleModel({
 required this.author, 
  required this.title,
  required this.description,
  required this.url,
  required this.urlToImage,
  required this.content,
  // required this.publishedAt

});
   
}
