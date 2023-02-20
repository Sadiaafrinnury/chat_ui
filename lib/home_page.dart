import 'package:chat_ui/Widget/body.dart';
import 'package:chat_ui/Widget/message_widget.dart';
import 'package:chat_ui/Widget/recent_contact.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text('Chat with\nyour Friends',style:
                  TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                        fontSize: 25),),
              ),
              Recentcontact(),
              MessageWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
