import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});
  Future<List<ArticlesModel>> getNews() async {
    try {
      // call API to get news, then return list of ArticlesModel
      final response = await dio.get(
          "https://newsapi.org/v2/everything?q=sports&apiKey=44976d9bc89544d5a0e7148da1bce7ac");

      List<dynamic> articles = response.data["articles"];
      List<ArticlesModel> articlesList = [];
      articles.map((e) {
        articlesList.add(ArticlesModel.fromJson(e));
      });
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
