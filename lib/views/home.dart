import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api/core/constance.dart';
import 'package:news_api/helper/data.dart';
import 'package:news_api/helper/news.dart';
import 'package:news_api/models/article_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<CategoryModel> categories=<CategoryModel>[];
  List<ArticleModel> articles = <ArticleModel>[];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    getCategories();
    getNews();
  }

  Future<void> getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter',
                style: TextStyle(fontWeight: bold),
              ),
              Text(
                'News',
                style: TextStyle(color: blueColor, fontWeight: bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: loading
            ? Center(
                child: Container(
                  child: const CircularProgressIndicator(strokeWidth: 4),
                ),
              )
            : SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        child: ListView.builder(
                            itemCount: categories.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CategoryTile(
                                imageUrl: categories[index].imageUrl,
                                categoryName: categories[index].categoryName,
                              );
                            }),
                      ),
                      // Blogs
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView.builder(
                          itemCount: articles.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BlogTile(
                              imageUrl: articles[index].urlToImage,
                              title: articles[index].title,
                              desc: articles[index].description,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;

  const CategoryTile({super.key, this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),

                // color: blackColor,
              ),
              child: Text(
                categoryName,
                style: const TextStyle(
                  color: whiteColor,
                  fontWeight: bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc;
  const BlogTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(imageUrl)),
          SizedBox(height: 10,),
          Text(
            title,
            style: const TextStyle(
              fontWeight: bold,
              fontSize: 18,
              letterSpacing: 1.5,
              // color: blackColor
            ),
          ),
          Text(
            desc,
            style: const TextStyle(
              color: grayColor,
            ),
          ),
           SizedBox(height: 10,),
        ],
      ),
    );
  }
}
