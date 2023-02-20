import 'package:chat_ui/Model/massage.dart';
import 'package:chat_ui/Widget/body.dart';
import 'package:flutter/material.dart';

class DetailsMessage extends StatelessWidget {
 final myId=0;
 final list=Message.generatedMessageFromUser();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only
              (topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            )
            ),
            child: ListView.separated(itemBuilder:
            (context,index)=> list[index].
            user.id== myId? _buildReceivedText(list[index]):_buildSenderText(list[index]),
             separatorBuilder:
            (_,index)=>SizedBox(height: 8,),
                itemCount: list.length),
          ),
          Body(),
        ],
      ),
    );

  }

  Widget _buildReceivedText(Message message){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.blue,
      ),
      height: 70,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 10,),
          Container(

            child: ConstrainedBox(constraints: BoxConstraints(minWidth: 180),

              child: Text(message.lasttime,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold)),),

          ),
          Container(

      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
      child: ConstrainedBox(constraints: BoxConstraints(minWidth: 0),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(message.lastmessage,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 20,
              )
              ),
            ),
          ),
          )],
      ),
    );
  }
  Widget _buildSenderText(Message message){
    return Row(
      children: [
        Container(
         height: 80,
          width: 80,
          decoration: BoxDecoration(color: message.user.bgColor,
          shape: BoxShape.circle),
          child: Center(
            child: Image.asset("images/avatar.png",width: 60,
              height: 50,
            ),
          ),

        ),
        SizedBox(height: 60,),
        Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only
    (topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
 )
    ),
          child: ConstrainedBox(constraints: BoxConstraints(minWidth: 180),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(message.lastmessage),
          ),),

    ),
        Text(message.lasttime),
      ],
    );
  }
}
