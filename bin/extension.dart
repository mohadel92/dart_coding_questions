void main() {
  var myMessage = Chat(
      from: "Mohammed",
      to: "Rowan",
      message: "You faild last exam",
      createdAt: DateTime(2021, 12, 30, 10, 30),
      updatedAt: null,
      isSecret: true);

  var newMessage = myMessage.copyWith(
      message: "You passed this exam sorry !", updatedAt: DateTime.now());

  print(myMessage);
  print(newMessage.createdAt?.getFormattedChatTime());
}

extension DateExtension on DateTime {
  String getFormattedChatTime() {
    var now = DateTime.now();
    if (hour == now.hour && minute == now.minute) {
      return "Now";
    } else {
      var duration = DateTime.now().difference(this);
      return "since ${duration.inMinutes} minutes ago";
    }
  }
}

class Chat {
  final String? from;
  final String? to;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? message;
  final bool? isSecret;

  Chat(
      {this.from,
      this.to,
      this.createdAt,
      this.updatedAt,
      this.message,
      this.isSecret});

  Chat copyWith(
      {String? from,
      String? to,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? message,
      bool? isSecret}) {
    return Chat(
        from: from ?? this.from,
        to: to ?? this.to,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        message: message ?? this.message,
        isSecret: isSecret ?? this.isSecret);
  }

  @override
  String toString() {
    return 'Chat{from: $from, to: $to, createdAt: $createdAt, updatedAt: $updatedAt, message: $message, isSecret: $isSecret}';
  }
}
