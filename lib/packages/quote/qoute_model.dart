class Quote {
  // Various properties of a Quote
  String? id;
  String? content;
  String? author;
  String? authorId;
  List? tags;
  int? length;

  Quote(
      {this.id,
      this.content,
      this.author,
      this.authorId,
      this.tags,
      this.length});

  //Converts a individual json component map to Quote model with respective fields
  Quote.fromJson(Map json)
      : content = json['content'],
        id = json['_id'],
        author = json['author'],
        authorId = json['authorId'],
        tags = json['tags'],
        length = json['length'];

  //Returns Id of the quote
  String? getId() {
    return id;
  }

  //Returns Content of the quote

  String? getContent() {
    return content;
  }

  //Returns Author of the quote

  String? getAuthor() {
    return author;
  }

  //Returns Authors ID of the quote

  String? getAuthorId() {
    return authorId;
  }

  //Returns list of tag of the quote

  List? getTags() {
    return tags;
  }

  //Returns the length of the quote,no of alphabets

  int? getLength() {
    return length;
  }
}
