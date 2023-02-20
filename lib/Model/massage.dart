import 'package:chat_ui/Model/user.dart';
import 'package:flutter/material.dart';

class Message {
  User user;
  String lastmessage;
  String lasttime;
  bool iscontinue;

  Message(this.user, this.lastmessage, this.lasttime, {
    this.iscontinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], "Good Bye", "12:55"),
      Message(users[1], "good night", "11:55"),
      Message(users[2], "Good moorning", "01:55"),
      Message(users[3], "Good moorning", "02:55"),
      Message(users[4], "Good Bye", "03:55"),
      Message(users[5], "Good Bye", "04:55"),
      Message(users[6], "Good moorning", "8:00"),
      Message(users[7], "Good moorning", "8:30"),
      Message(users[8], "good night, Good moorning", "12:45"),


    ];
  }

  static List<Message> generatedMessageFromUser() {
    return [
      Message(users[1], "Good Bye", "12:55"),
      Message(me, "good night", "11:55"),
      Message(users[2], "Good moorning", "01:55"),
      Message(me, "Good Bye", "03:55"),
      Message(users[3], "Good Bye", "04:55"),
      Message(me, "Good moorning", "8:30"),
      Message(users[4], "good night, Good moorning", "12:45"),
      Message(users[5], "Good Bye", "12:55"),
      Message(me, "good night", "11:55"),
      Message(users[6], "Good moorning", "01:55"),
      Message(me, "Good Bye", "03:55"),
      Message(users[7], "Good Bye", "04:55"),
      Message(me, "Good moorning", "8:30"),
      Message(users[8], "good night, Good moorning", "12:45"),
    ];
  }
   }

var users = User.generatedUser();
  var me= User(0,"Nahid","Hasan","images/aiub.jpg",
      Color(0xFFFDEBC8));


