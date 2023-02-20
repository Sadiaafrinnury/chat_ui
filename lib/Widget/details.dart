import 'package:chat_ui/Model/massage.dart';
import 'package:chat_ui/Widget/Contact_info.dart';
import 'package:chat_ui/Widget/body.dart';
import 'package:chat_ui/Widget/details_appbar.dart';
import 'package:chat_ui/Widget/details_message.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
 final Message message;
 Detailspage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          DetailsAppbar(),
          Contactinfo(message),
          Expanded(child: DetailsMessage()),

        ],
      ) ,
    );
  }
}
