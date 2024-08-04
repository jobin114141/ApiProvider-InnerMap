class articles {
  Source? source;
  String? author;
  String? title;
  String? content;
  articles({
    this.source,
    this.author,
    this.content,
    this.title,
  });
  factory articles.fromJson(Map<String, dynamic> json) => articles(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        content: json["content"],
      );
}

class Source {
  dynamic id;
  String? name;
  Source({this.id, this.name});
  factory Source.fromJson(Map<String, dynamic> json) =>
      Source(id: json['id'], name: json['name']);
}
