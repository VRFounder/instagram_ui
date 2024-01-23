class Post {
  String userName;
  String userImage;
  String postImage;
  String postText;
  String postDate;
  int likesCount;
  List<String> lastLikes;

  Post({
    required this.userName,
    required this.userImage,
    required this.postImage,
    required this.postText,
    required this.postDate,
    required this.likesCount,
    required this.lastLikes,
  });
}
