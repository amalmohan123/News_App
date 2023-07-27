import 'package:flutter/material.dart';
import 'package:news_api/core/constance.dart';
import 'package:news_api/helper/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


@override
  void initState() {
    super.initState();
    getCategories();
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
        body: Container(
          child: Column(
            children: [],
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
    return Container(
      child: Stack(children: [

      ],),
    );
  }
}
