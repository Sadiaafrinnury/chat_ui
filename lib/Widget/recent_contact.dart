import 'package:chat_ui/Model/user.dart';
import 'package:flutter/material.dart';

class Recentcontact extends StatelessWidget {
  final contactlist = User.generatedUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(
          vertical: 25),
      padding: EdgeInsets.only(left: 25),
      child:Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),

            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(shape: BoxShape.circle,
                color: Colors.white.withOpacity(.5)),
            child: Icon(Icons.search,size: 30,color: Colors.white),
          ),
          Expanded(child: ListView.separated(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(shape: BoxShape.circle,color: contactlist[index].bgColor),
    child: Image.asset(contactlist[index].iconUrl, ),

    ),
                separatorBuilder: (_,index)=>SizedBox(width: 12.0),
                  itemCount: contactlist.length),

          ),
        ],
      ),


    );
  }
}
