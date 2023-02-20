

import 'package:chat_ui/Widget/details.dart';
import 'package:flutter/material.dart';

import '../Model/massage.dart';

class MessageWidget extends StatelessWidget {
final messagelist= Message.generatedHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,vertical: 40
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: _buildMessages(),
        ),
    );
  }

  Widget _buildMessages(){
    return ListView.separated(
        itemBuilder: (context,index)=>_buildMessage
          (context,index),
        separatorBuilder: (_,index)=>SizedBox(
          height: 25,
        ),
        itemCount: messagelist.length);
  }
  Widget _buildMessage(BuildContext context,int index){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>Detailspage(messagelist[index])));
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration
              (shape: BoxShape.circle,
            color: messagelist[index].user.bgColor),
            child: Image.asset(messagelist[index].user.iconUrl),
            width: 60,),
          SizedBox(width: 8,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('${messagelist[index].user.firstname} ${
                          messagelist[index].user.lastname}',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                  ],
                ),
                Text(messagelist[index].lastmessage),
              ],
            ),
          ),
          Text(messagelist[index].lasttime),
        ],
      ),
    );

  }
}
