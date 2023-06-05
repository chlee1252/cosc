class User {
  final String userName;
  final String profileUrl;
  final int solved;
  final int correct;
  final String language;
  final bool completed;

  User({this.userName = "CoScId", this.profileUrl = "", this.language = "py", this.solved = 0, this.correct = 0, this.completed = false});
}
