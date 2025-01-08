class PostModel {
  final String id;
  final String title;
  final String? imageUrl; // Optional for text-only posts
  final DateTime createdAt;

  PostModel({
    required this.id,
    required this.title,
    this.imageUrl,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }
}
