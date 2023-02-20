import 'dart:ui';

class User{
  num id;
  String firstname;
  String lastname;
  String iconUrl;
  Color bgColor;

  User(this.id, this.firstname, this.lastname,
      this.iconUrl, this.bgColor);
  static List<User> generatedUser() {
    return[
      User(0, "Shishir", "Hasan", "images/avatar.png", Color(0xFFEDEEF7)),
      User(1, "Shahid", "Hasan", "images/boy.png", Color(0x9398D0FF)),
      User(2, "Jishan", "Hasan", "images/businessman.png", Color(0x717279FF)),
      User(3, "Shishir", "chowdhury", "images/man.png", Color(0xB1E5D5FF)),
      User(4, "shampa", "Hasan", "images/woman.png", Color(0xBAC491FF)),
      User(5, "Shapla", "Hasan", "images/woman.png", Color(0xBAC491FF)),
      User(6, "sadia", "Afrin", "images/woman.png", Color(0xFFEDEEF7)),
      User(7, "Liza", "Hasan", "images/woman.png", Color(0xFFEDEEF7)),
      User(8, "Sharmin", "Hasan", "images/woman.png", Color(0x8569A6BA)),
    ];
  }
}
