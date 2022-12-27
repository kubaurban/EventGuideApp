class Message {
  Message({
    required this.content,
    required this.timestamp,
    required this.author,
  });

  final String content;
  final DateTime timestamp;
  final String author;
}
