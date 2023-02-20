import 'package:chat_ui/Widget/body.dart';
import 'package:flutter/material.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: () {}, child: Text('Back',
            style: TextStyle(fontSize: 24, color: Colors.white),)),
          TextButton(onPressed: () {}, child: Text('Search',
            style: TextStyle(fontSize: 24, color: Colors.white),))
        ],
      ),
    );


  }

}
