class PeerChat {
  PeerChat({
    this.userAvatarUrl,
    this.message,
    this.senderName,
    this.chatSentAt,
  });

  String userAvatarUrl;
  String senderName;
  String message;
  DateTime chatSentAt;

  get isGroup => isGroup;
}
