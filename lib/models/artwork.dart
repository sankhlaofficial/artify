class Artwork {
  //id, title,description, author, image,category , link

  final String id;
  final String title;
  final String description;
  final String author;
  final String image;
  final String category;
  final String link;

  Artwork(
      {required this.id,
      required this.title,
      required this.description,
      required this.author,
      required this.image,
      required this.category,
      required this.link});

  factory Artwork.fromJson(Map<String, dynamic> json) {
    return Artwork(
        id: json['id'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        author: json['author'] as String,
        image: json['image'] as String,
        category: json['category'] as String,
        link: json['link'] as String);
  }
}
