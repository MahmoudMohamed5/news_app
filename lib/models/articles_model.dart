class ArticlesModel {
  final String title;
  final String description;
  final String urlToImage;

  ArticlesModel({
    required this.title,
    required this.description,
    required this.urlToImage,
  });
  factory ArticlesModel.fromJson(Map<String, dynamic> json) {
    return ArticlesModel(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
    );
  }
}
