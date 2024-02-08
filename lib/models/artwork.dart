class Artwork {
  //id, title,description, author, image,category , link

  final int id;
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
        id: json['id'],
        title: json['title'] ?? '',
        description: json['short_description'] ?? '',
        author: json['artist_title'] ?? '',
        image: json['thumbnail'] ?? '',
        category: json['department_title'] ?? '',
        link: json['link'] ?? '');
  }
}
