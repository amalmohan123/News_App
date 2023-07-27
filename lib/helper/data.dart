





import 'package:news_api/models/category_model.dart';

 List<CategoryModel> categories = [];
  List<CategoryModel>getCategories(){


CategoryModel categoryModel =  CategoryModel();

// 1
categoryModel.categoryName ='Bussines';
categoryModel.imageUrl='https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80';
categories.add(categoryModel);
categoryModel = CategoryModel(); 

// 2
categoryModel = CategoryModel(); 
categoryModel.categoryName ='Entertaiment';
categoryModel.imageUrl='https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80';
categories.add(categoryModel);

// 3
categoryModel = CategoryModel(); 
categoryModel.categoryName ='Genaral';
categoryModel.imageUrl='https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80';
categories.add(categoryModel);

// 4
categoryModel = CategoryModel(); 
categoryModel.categoryName ='Helth';
categoryModel.imageUrl='https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80';
categories.add(categoryModel);

// 5
categoryModel = CategoryModel(); 
categoryModel.categoryName ='Scinece';
categoryModel.imageUrl='https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80';
categories.add(categoryModel);


return categories;
  }