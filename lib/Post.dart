class Post {
  String body;
  String author;
  int likes = 0;
  bool liked = false;

  Post(this.body, this.author);

  void likePost() {
    if (liked == false) {
      likes++;
    } else {
      likes--;
    }
    liked = !liked;
  }
}
